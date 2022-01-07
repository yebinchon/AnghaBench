; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_ah_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_ah_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.efa_ah = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.efa_com_destroy_ah_params = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.efa_ah*)* @efa_ah_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_ah_destroy(%struct.efa_dev* %0, %struct.efa_ah* %1) #0 {
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.efa_ah*, align 8
  %5 = alloca %struct.efa_com_destroy_ah_params, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  store %struct.efa_ah* %1, %struct.efa_ah** %4, align 8
  %6 = getelementptr inbounds %struct.efa_com_destroy_ah_params, %struct.efa_com_destroy_ah_params* %5, i32 0, i32 0
  %7 = load %struct.efa_ah*, %struct.efa_ah** %4, align 8
  %8 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @to_epd(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = getelementptr inbounds %struct.efa_com_destroy_ah_params, %struct.efa_com_destroy_ah_params* %5, i32 0, i32 1
  %15 = load %struct.efa_ah*, %struct.efa_ah** %4, align 8
  %16 = getelementptr inbounds %struct.efa_ah, %struct.efa_ah* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %19 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %18, i32 0, i32 0
  %20 = call i32 @efa_com_destroy_ah(i32* %19, %struct.efa_com_destroy_ah_params* %5)
  ret i32 %20
}

declare dso_local %struct.TYPE_4__* @to_epd(i32) #1

declare dso_local i32 @efa_com_destroy_ah(i32*, %struct.efa_com_destroy_ah_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
