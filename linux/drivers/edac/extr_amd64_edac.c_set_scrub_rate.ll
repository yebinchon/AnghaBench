; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_set_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_set_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @set_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_scrub_rate(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  store %struct.amd64_pvt* %9, %struct.amd64_pvt** %5, align 8
  store i32 5, i32* %6, align 4
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %11 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 21
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %22 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %27 = call i32 @f15h_select_dct(%struct.amd64_pvt* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 96
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 6, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @__set_scrub_rate(%struct.amd64_pvt* %36, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @__set_scrub_rate(%struct.amd64_pvt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
