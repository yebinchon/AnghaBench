; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_fm_set_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_fm_set_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }
%struct.vl_arb_cache = type { i32 }

@HI_PRIO_TABLE = common dso_local global i32 0, align 4
@SEND_HIGH_PRIORITY_LIST = common dso_local global i32 0, align 4
@VL_ARB_HIGH_PRIO_TABLE_SIZE = common dso_local global i32 0, align 4
@LO_PRIO_TABLE = common dso_local global i32 0, align 4
@SEND_LOW_PRIORITY_LIST = common dso_local global i32 0, align 4
@VL_ARB_LOW_PRIO_TABLE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_set_table(%struct.hfi1_pportdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vl_arb_cache*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %68 [
    i32 129, label %10
    i32 128, label %34
    i32 131, label %58
    i32 130, label %62
  ]

10:                                               ; preds = %3
  %11 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %12 = load i32, i32* @HI_PRIO_TABLE, align 4
  %13 = call %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata* %11, i32 %12)
  store %struct.vl_arb_cache* %13, %struct.vl_arb_cache** %8, align 8
  %14 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @vl_arb_match_cache(%struct.vl_arb_cache* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %20 = load i32, i32* @HI_PRIO_TABLE, align 4
  %21 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %19, i32 %20)
  br label %71

22:                                               ; preds = %10
  %23 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @vl_arb_set_cache(%struct.vl_arb_cache* %23, i8* %24)
  %26 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %27 = load i32, i32* @HI_PRIO_TABLE, align 4
  %28 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %26, i32 %27)
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %30 = load i32, i32* @SEND_HIGH_PRIORITY_LIST, align 4
  %31 = load i32, i32* @VL_ARB_HIGH_PRIO_TABLE_SIZE, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @set_vl_weights(%struct.hfi1_pportdata* %29, i32 %30, i32 %31, i8* %32)
  store i32 %33, i32* %7, align 4
  br label %71

34:                                               ; preds = %3
  %35 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %36 = load i32, i32* @LO_PRIO_TABLE, align 4
  %37 = call %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata* %35, i32 %36)
  store %struct.vl_arb_cache* %37, %struct.vl_arb_cache** %8, align 8
  %38 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @vl_arb_match_cache(%struct.vl_arb_cache* %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %44 = load i32, i32* @LO_PRIO_TABLE, align 4
  %45 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %43, i32 %44)
  br label %71

46:                                               ; preds = %34
  %47 = load %struct.vl_arb_cache*, %struct.vl_arb_cache** %8, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @vl_arb_set_cache(%struct.vl_arb_cache* %47, i8* %48)
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %51 = load i32, i32* @LO_PRIO_TABLE, align 4
  %52 = call i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata* %50, i32 %51)
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %54 = load i32, i32* @SEND_LOW_PRIORITY_LIST, align 4
  %55 = load i32, i32* @VL_ARB_LOW_PRIO_TABLE_SIZE, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @set_vl_weights(%struct.hfi1_pportdata* %53, i32 %54, i32 %55, i8* %56)
  store i32 %57, i32* %7, align 4
  br label %71

58:                                               ; preds = %3
  %59 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @set_buffer_control(%struct.hfi1_pportdata* %59, i8* %60)
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %3
  %63 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %64 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @set_sc2vlnt(i32 %65, i8* %66)
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %62, %58, %46, %42, %22, %18
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.vl_arb_cache* @vl_arb_lock_cache(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @vl_arb_match_cache(%struct.vl_arb_cache*, i8*) #1

declare dso_local i32 @vl_arb_unlock_cache(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @vl_arb_set_cache(%struct.vl_arb_cache*, i8*) #1

declare dso_local i32 @set_vl_weights(%struct.hfi1_pportdata*, i32, i32, i8*) #1

declare dso_local i32 @set_buffer_control(%struct.hfi1_pportdata*, i8*) #1

declare dso_local i32 @set_sc2vlnt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
