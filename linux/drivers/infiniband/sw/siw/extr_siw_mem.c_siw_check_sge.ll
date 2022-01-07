; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_check_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_check_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.siw_sge = type { i64, i32, i64 }
%struct.siw_mem = type { i32 }
%struct.siw_device = type { i32 }

@E_ACCESS_OK = common dso_local global i32 0, align 4
@E_BASE_BOUNDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"STag unknown: 0x%08x\0A\00", align 1
@E_STAG_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"STag mismatch: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_check_sge(%struct.ib_pd* %0, %struct.siw_sge* %1, %struct.siw_mem** %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca %struct.siw_sge*, align 8
  %10 = alloca %struct.siw_mem**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.siw_device*, align 8
  %15 = alloca %struct.siw_mem*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store %struct.siw_sge* %1, %struct.siw_sge** %9, align 8
  store %struct.siw_mem** %2, %struct.siw_mem*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.siw_device* @to_siw_dev(i32 %19)
  store %struct.siw_device* %20, %struct.siw_device** %14, align 8
  store %struct.siw_mem* null, %struct.siw_mem** %15, align 8
  %21 = load i32, i32* @E_ACCESS_OK, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %12, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %27 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @E_BASE_BOUNDS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %99

33:                                               ; preds = %6
  %34 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  %35 = load %struct.siw_mem*, %struct.siw_mem** %34, align 8
  %36 = icmp eq %struct.siw_mem* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.siw_device*, %struct.siw_device** %14, align 8
  %39 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %40 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 8
  %43 = call %struct.siw_mem* @siw_mem_id2obj(%struct.siw_device* %38, i32 %42)
  store %struct.siw_mem* %43, %struct.siw_mem** %15, align 8
  %44 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %45 = icmp ne %struct.siw_mem* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %37
  %51 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %52 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %53 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @siw_dbg_pd(%struct.ib_pd* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @E_STAG_INVALID, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %16, align 4
  br label %99

58:                                               ; preds = %37
  %59 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %60 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  store %struct.siw_mem* %59, %struct.siw_mem** %60, align 8
  br label %61

61:                                               ; preds = %58, %33
  %62 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  %63 = load %struct.siw_mem*, %struct.siw_mem** %62, align 8
  %64 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %67 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %61
  %74 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  %75 = load %struct.siw_mem*, %struct.siw_mem** %74, align 8
  %76 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %77 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @siw_dbg_mem(%struct.siw_mem* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @E_STAG_INVALID, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %16, align 4
  br label %99

82:                                               ; preds = %61
  %83 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %84 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  %85 = load %struct.siw_mem*, %struct.siw_mem** %84, align 8
  %86 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %87 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @siw_check_mem(%struct.ib_pd* %83, %struct.siw_mem* %85, i64 %90, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %108

99:                                               ; preds = %97, %73, %50, %30
  %100 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %101 = icmp ne %struct.siw_mem* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.siw_mem**, %struct.siw_mem*** %10, align 8
  store %struct.siw_mem* null, %struct.siw_mem** %103, align 8
  %104 = load %struct.siw_mem*, %struct.siw_mem** %15, align 8
  %105 = call i32 @siw_mem_put(%struct.siw_mem* %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %98
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local %struct.siw_mem* @siw_mem_id2obj(%struct.siw_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*, i32) #1

declare dso_local i32 @siw_dbg_mem(%struct.siw_mem*, i8*, i32) #1

declare dso_local i32 @siw_check_mem(%struct.ib_pd*, %struct.siw_mem*, i64, i32, i32) #1

declare dso_local i32 @siw_mem_put(%struct.siw_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
