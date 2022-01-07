; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_dev.c_host1x_setup_sid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_dev.c_host1x_setup_sid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.host1x_info* }
%struct.host1x_info = type { i32, %struct.host1x_sid_entry* }
%struct.host1x_sid_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*)* @host1x_setup_sid_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_setup_sid_table(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.host1x_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x_sid_entry*, align 8
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %6 = load %struct.host1x*, %struct.host1x** %2, align 8
  %7 = getelementptr inbounds %struct.host1x, %struct.host1x* %6, i32 0, i32 0
  %8 = load %struct.host1x_info*, %struct.host1x_info** %7, align 8
  store %struct.host1x_info* %8, %struct.host1x_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.host1x_info*, %struct.host1x_info** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_info, %struct.host1x_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.host1x_info*, %struct.host1x_info** %3, align 8
  %17 = getelementptr inbounds %struct.host1x_info, %struct.host1x_info* %16, i32 0, i32 1
  %18 = load %struct.host1x_sid_entry*, %struct.host1x_sid_entry** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.host1x_sid_entry, %struct.host1x_sid_entry* %18, i64 %20
  store %struct.host1x_sid_entry* %21, %struct.host1x_sid_entry** %5, align 8
  %22 = load %struct.host1x*, %struct.host1x** %2, align 8
  %23 = load %struct.host1x_sid_entry*, %struct.host1x_sid_entry** %5, align 8
  %24 = getelementptr inbounds %struct.host1x_sid_entry, %struct.host1x_sid_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.host1x_sid_entry*, %struct.host1x_sid_entry** %5, align 8
  %27 = getelementptr inbounds %struct.host1x_sid_entry, %struct.host1x_sid_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @host1x_hypervisor_writel(%struct.host1x* %22, i32 %25, i64 %28)
  %30 = load %struct.host1x*, %struct.host1x** %2, align 8
  %31 = load %struct.host1x_sid_entry*, %struct.host1x_sid_entry** %5, align 8
  %32 = getelementptr inbounds %struct.host1x_sid_entry, %struct.host1x_sid_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.host1x_sid_entry*, %struct.host1x_sid_entry** %5, align 8
  %35 = getelementptr inbounds %struct.host1x_sid_entry, %struct.host1x_sid_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 4
  %38 = call i32 @host1x_hypervisor_writel(%struct.host1x* %30, i32 %33, i64 %37)
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %9

42:                                               ; preds = %9
  ret void
}

declare dso_local i32 @host1x_hypervisor_writel(%struct.host1x*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
