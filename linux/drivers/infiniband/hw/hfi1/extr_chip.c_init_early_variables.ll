; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_early_variables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_early_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, %struct.hfi1_pportdata*, i32, i32 }
%struct.hfi1_pportdata = type { i32 }

@CM_VAU = common dso_local global i32 0, align 4
@CM_GLOBAL_CREDITS = common dso_local global i32 0, align 4
@hfi1_cu = common dso_local global i32 0, align 4
@PKEY_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @init_early_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_early_variables(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load i32, i32* @CM_VAU, align 4
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @CM_GLOBAL_CREDITS, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = call i64 @is_ax(%struct.hfi1_devdata* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @hfi1_cu, align 4
  %21 = call i32 @cu_to_vcu(i32 %20)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @vau_to_au(i32 %26)
  %28 = sdiv i32 17408, %27
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %19
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %46 = call i32 @write_uninitialized_csrs_and_memories(%struct.hfi1_devdata* %45)
  %47 = load i32, i32* @PKEY_CHECK, align 4
  %48 = call i64 @HFI1_CAP_IS_KSET(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 3
  %60 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %60, i64 %62
  store %struct.hfi1_pportdata* %63, %struct.hfi1_pportdata** %4, align 8
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %65 = call i32 @set_partition_keys(%struct.hfi1_pportdata* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %51

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %72 = call i32 @init_sc2vl_tables(%struct.hfi1_devdata* %71)
  ret void
}

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @cu_to_vcu(i32) #1

declare dso_local i32 @vau_to_au(i32) #1

declare dso_local i32 @write_uninitialized_csrs_and_memories(%struct.hfi1_devdata*) #1

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @set_partition_keys(%struct.hfi1_pportdata*) #1

declare dso_local i32 @init_sc2vl_tables(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
