; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_fm_get_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_fm_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }
%struct.vl_arb_cache = type { i32 }

@HI_PRIO_TABLE = common dso_local global i32 0, align 4
@LO_PRIO_TABLE = common dso_local global i32 0, align 4
@OPA_MAX_VLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_get_table(%struct.hfi1_pportdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vl_arb_cache*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %51 [
    i32 131, label %11
    i32 130, label %21
    i32 133, label %31
    i32 132, label %37
    i32 129, label %43
    i32 128, label %50
  ]

11:                                               ; preds = %3
  store i32 256, i32* %8, align 4
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %13 = load i32, i32* @HI_PRIO_TABLE, align 4
  %14 = call %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata* %12, i32 %13)
  store %struct.vl_arb_cache* %14, %struct.vl_arb_cache** %9, align 8
  %15 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @vl_arb_get_cache(%struct.vl_arb_cache* %15, i8* %16)
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %19 = load i32, i32* @HI_PRIO_TABLE, align 4
  %20 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %18, i32 %19)
  br label %54

21:                                               ; preds = %3
  store i32 256, i32* %8, align 4
  %22 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %23 = load i32, i32* @LO_PRIO_TABLE, align 4
  %24 = call %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata* %22, i32 %23)
  store %struct.vl_arb_cache* %24, %struct.vl_arb_cache** %9, align 8
  %25 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @vl_arb_get_cache(%struct.vl_arb_cache* %25, i8* %26)
  %28 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %29 = load i32, i32* @LO_PRIO_TABLE, align 4
  %30 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %28, i32 %29)
  br label %54

31:                                               ; preds = %3
  %32 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %33 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @get_buffer_control(i32 %34, i8* %35, i32* null)
  store i32 %36, i32* %8, align 4
  br label %54

37:                                               ; preds = %3
  %38 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @get_sc2vlnt(i32 %40, i8* %41)
  store i32 %42, i32* %8, align 4
  br label %54

43:                                               ; preds = %3
  store i32 256, i32* %8, align 4
  %44 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %45 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OPA_MAX_VLS, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @get_vlarb_preempt(i32 %46, i32 %47, i8* %48)
  br label %54

50:                                               ; preds = %3
  store i32 256, i32* %8, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %50, %43, %37, %31, %21, %11
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @vl_arb_get_cache(%struct.vl_arb_cache*, i8*) #1

declare dso_local i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @get_buffer_control(i32, i8*, i32*) #1

declare dso_local i32 @get_sc2vlnt(i32, i8*) #1

declare dso_local i32 @get_vlarb_preempt(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
