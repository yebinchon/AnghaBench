; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_l2remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_tei_l2remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32*)*, i32 }
%struct.TYPE_3__ = type { i32 }

@ID_REMOVE = common dso_local global i32 0, align 4
@MDL_REMOVE_REQ = common dso_local global i32 0, align 4
@CLOSE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*)* @tei_l2remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_l2remove(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %3 = load %struct.layer2*, %struct.layer2** %2, align 8
  %4 = getelementptr inbounds %struct.layer2, %struct.layer2* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ID_REMOVE, align 4
  %9 = load %struct.layer2*, %struct.layer2** %2, align 8
  %10 = getelementptr inbounds %struct.layer2, %struct.layer2* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @put_tei_msg(i32 %7, i32 %8, i32 0, i32 %11)
  %13 = load %struct.layer2*, %struct.layer2** %2, align 8
  %14 = load i32, i32* @MDL_REMOVE_REQ, align 4
  %15 = call i32 @tei_l2(%struct.layer2* %13, i32 %14, i32 0)
  %16 = load %struct.layer2*, %struct.layer2** %2, align 8
  %17 = getelementptr inbounds %struct.layer2, %struct.layer2* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.layer2*, %struct.layer2** %2, align 8
  %21 = getelementptr inbounds %struct.layer2, %struct.layer2* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*, i32, i32*)*, i32 (%struct.TYPE_4__*, i32, i32*)** %22, align 8
  %24 = load %struct.layer2*, %struct.layer2** %2, align 8
  %25 = getelementptr inbounds %struct.layer2, %struct.layer2* %24, i32 0, i32 0
  %26 = load i32, i32* @CLOSE_CHANNEL, align 4
  %27 = call i32 %23(%struct.TYPE_4__* %25, i32 %26, i32* null)
  ret void
}

declare dso_local i32 @put_tei_msg(i32, i32, i32, i32) #1

declare dso_local i32 @tei_l2(%struct.layer2*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
