; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_dcb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_dcb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dcb_table }
%struct.dcb_table = type { i32 }
%struct.dcb_output = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"DCB outp %02d: %08x %08x\0A\00", align 1
@DCB_OUTPUT_TV = common dso_local global i64 0, align 8
@DCB_LOC_ON_CHIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, i32, i32*)* @parse_dcb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dcb_entry(%struct.drm_device* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.dcb_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dcb_output*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %10, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.dcb_table* %20, %struct.dcb_table** %11, align 8
  %21 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %22 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ROM32(i32 %28)
  br label %35

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ROM32(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ROM32(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @apply_dcb_encoder_quirks(%struct.drm_device* %41, i32 %42, i32* %13, i32* %12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %35
  %46 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %47 = call %struct.dcb_output* @new_dcb_entry(%struct.dcb_table* %46)
  store %struct.dcb_output* %47, %struct.dcb_output** %15, align 8
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @NV_INFO(%struct.nouveau_drm* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %54 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 32
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %59 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.dcb_output*, %struct.dcb_output** %15, align 8
  %63 = call i32 @parse_dcb20_entry(%struct.drm_device* %58, %struct.dcb_table* %59, i32 %60, i32 %61, %struct.dcb_output* %62)
  store i32 %63, i32* %14, align 4
  br label %71

64:                                               ; preds = %45
  %65 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %66 = load %struct.dcb_table*, %struct.dcb_table** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.dcb_output*, %struct.dcb_output** %15, align 8
  %70 = call i32 @parse_dcb15_entry(%struct.drm_device* %65, %struct.dcb_table* %66, i32 %67, i32 %68, %struct.dcb_output* %69)
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %64, %57
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %92

75:                                               ; preds = %71
  %76 = load %struct.dcb_output*, %struct.dcb_output** %15, align 8
  %77 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.dcb_output*, %struct.dcb_output** %15, align 8
  %83 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DCB_LOC_ON_CHIP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.dcb_output*, %struct.dcb_output** %15, align 8
  %89 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %88, i32 0, i32 2
  store i32 15, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %81, %75
  br label %91

91:                                               ; preds = %90, %35
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i64 @apply_dcb_encoder_quirks(%struct.drm_device*, i32, i32*, i32*) #1

declare dso_local %struct.dcb_output* @new_dcb_entry(%struct.dcb_table*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, i32, i32) #1

declare dso_local i32 @parse_dcb20_entry(%struct.drm_device*, %struct.dcb_table*, i32, i32, %struct.dcb_output*) #1

declare dso_local i32 @parse_dcb15_entry(%struct.drm_device*, %struct.dcb_table*, i32, i32, %struct.dcb_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
