; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_i_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_i_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32, i32*, i32, i8*, i8* }
%struct.bit_entry = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"BIT i table too short for needed information\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FEATURE_MOBILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"BIT i table not long enough for DAC load detection comparison table\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"DAC load detection comparison table version %d.%d not known\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)* @parse_bit_i_tbl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_i_tbl_entry(%struct.drm_device* %0, %struct.nvbios* %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %8, align 8
  %14 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %15 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %20 = call i32 @NV_ERROR(%struct.nouveau_drm* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %121

23:                                               ; preds = %3
  %24 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %25 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 5
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %35 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %37 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FEATURE_MOBILE, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %42 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %44 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 15
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %49 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_WARN(%struct.nouveau_drm* %48, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %121

52:                                               ; preds = %23
  %53 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %54 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %57 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 13
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ROM16(i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %121

67:                                               ; preds = %52
  %68 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %69 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %75 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %67
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 16
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 15
  %92 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_WARN(%struct.nouveau_drm* %87, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %91)
  %93 = load i32, i32* @ENOSYS, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %121

95:                                               ; preds = %83, %67
  %96 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %97 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %99, %101
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @ROM32(i32 %104)
  %106 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %107 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %109 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = add i64 %114, 4
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @ROM32(i32 %117)
  %119 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %120 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %95, %86, %66, %47, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i64 @ROM16(i32) #1

declare dso_local i8* @ROM32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
