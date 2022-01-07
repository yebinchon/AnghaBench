; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { i32, i32, i32, i32, i64, %struct.nvkm_gr }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fecs_inst\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fecs_data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gpccs_inst\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gpccs_data\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_new_(%struct.gf100_gr_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_gr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_gr_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_gr**, align 8
  %10 = alloca %struct.gf100_gr*, align 8
  %11 = alloca i32, align 4
  store %struct.gf100_gr_func* %0, %struct.gf100_gr_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_gr** %3, %struct.nvkm_gr*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gf100_gr* @kzalloc(i32 32, i32 %12)
  store %struct.gf100_gr* %13, %struct.gf100_gr** %10, align 8
  %14 = icmp ne %struct.gf100_gr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %65

18:                                               ; preds = %4
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %20 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %19, i32 0, i32 5
  %21 = load %struct.nvkm_gr**, %struct.nvkm_gr*** %9, align 8
  store %struct.nvkm_gr* %20, %struct.nvkm_gr** %21, align 8
  %22 = load %struct.gf100_gr_func*, %struct.gf100_gr_func** %6, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %26 = call i32 @gf100_gr_ctor(%struct.gf100_gr_func* %22, %struct.nvkm_device* %23, i32 %24, %struct.gf100_gr* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %33 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %39 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %38, i32 0, i32 3
  %40 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %36
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %44 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %45 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %44, i32 0, i32 2
  %46 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %50 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %51 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %50, i32 0, i32 1
  %52 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %56 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %57 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %56, i32 0, i32 0
  %58 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48, %42, %36
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %31
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %60, %29, %15
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.gf100_gr* @kzalloc(i32, i32) #1

declare dso_local i32 @gf100_gr_ctor(%struct.gf100_gr_func*, %struct.nvkm_device*, i32, %struct.gf100_gr*) #1

declare dso_local i64 @gf100_gr_ctor_fw(%struct.gf100_gr*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
