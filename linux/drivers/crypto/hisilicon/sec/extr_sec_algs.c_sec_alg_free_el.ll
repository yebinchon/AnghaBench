; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_free_el.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_alg_free_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_request_el = type { %struct.sec_request_el*, %struct.sec_request_el*, i32, i32, i32, i32 }
%struct.sec_dev_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_request_el*, %struct.sec_dev_info*)* @sec_alg_free_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_alg_free_el(%struct.sec_request_el* %0, %struct.sec_dev_info* %1) #0 {
  %3 = alloca %struct.sec_request_el*, align 8
  %4 = alloca %struct.sec_dev_info*, align 8
  store %struct.sec_request_el* %0, %struct.sec_request_el** %3, align 8
  store %struct.sec_dev_info* %1, %struct.sec_dev_info** %4, align 8
  %5 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %6 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %9 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %12 = call i32 @sec_free_hw_sgl(i32 %7, i32 %10, %struct.sec_dev_info* %11)
  %13 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %14 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %17 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %20 = call i32 @sec_free_hw_sgl(i32 %15, i32 %18, %struct.sec_dev_info* %19)
  %21 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %22 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %21, i32 0, i32 1
  %23 = load %struct.sec_request_el*, %struct.sec_request_el** %22, align 8
  %24 = call i32 @kfree(%struct.sec_request_el* %23)
  %25 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %26 = getelementptr inbounds %struct.sec_request_el, %struct.sec_request_el* %25, i32 0, i32 0
  %27 = load %struct.sec_request_el*, %struct.sec_request_el** %26, align 8
  %28 = call i32 @kfree(%struct.sec_request_el* %27)
  %29 = load %struct.sec_request_el*, %struct.sec_request_el** %3, align 8
  %30 = call i32 @kfree(%struct.sec_request_el* %29)
  ret void
}

declare dso_local i32 @sec_free_hw_sgl(i32, i32, %struct.sec_dev_info*) #1

declare dso_local i32 @kfree(%struct.sec_request_el*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
