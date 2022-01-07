; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_ram_restrict_zm_reg_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_ram_restrict_zm_reg_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"RAM_RESTRICT_ZM_REG_GROUP\09R[0x%08x] 0x%02x 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09R[0x%06x] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09\090x%08x *\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\09\090x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_ram_restrict_zm_reg_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ram_restrict_zm_reg_group(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %3, align 8
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @nvbios_rd32(%struct.nvkm_bios* %19, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 5
  %30 = call i64 @nvbios_rd08(%struct.nvkm_bios* %25, i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 6
  %36 = call i64 @nvbios_rd08(%struct.nvkm_bios* %31, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = call i64 @init_ram_restrict_group_count(%struct.nvbios_init* %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = call i64 @init_ram_restrict(%struct.nvbios_init* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i64 %43)
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 7
  store i64 %48, i64* %46, align 8
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %94, %1
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %84, %53
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nvbios_rd32(%struct.nvkm_bios* %61, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @init_wr32(%struct.nvbios_init* %72, i32 %73, i32 %74)
  br label %79

76:                                               ; preds = %60
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %81 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 4
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %56

87:                                               ; preds = %56
  %88 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %87
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %49

97:                                               ; preds = %49
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @init_ram_restrict_group_count(%struct.nvbios_init*) #1

declare dso_local i64 @init_ram_restrict(%struct.nvbios_init*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
