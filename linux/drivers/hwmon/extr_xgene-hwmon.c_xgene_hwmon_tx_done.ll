; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"TX did not complete: CMD sent:%x, ret:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"TX completed. CMD sent:%x, ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*, i32)* @xgene_hwmon_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_hwmon_tx_done(%struct.mbox_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mbox_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mbox_client* %0, %struct.mbox_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %11 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %20 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
