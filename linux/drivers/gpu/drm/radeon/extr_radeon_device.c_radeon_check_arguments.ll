; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_check_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_check_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@radeon_vram_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vram limit (%d) must be a power of 2\0A\00", align 1
@radeon_gart_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"gart size (%d) too small\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"gart size (%d) must be a power of 2\0A\00", align 1
@radeon_agpmode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"invalid AGP mode %d (valid mode: -1, 0, 1, 2, 4, 8)\0A\00", align 1
@radeon_vm_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"VM size (%d) must be a power of 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"VM size (%d) too small, min is 1GB\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"VM size (%d) too large, max is 1TB\0A\00", align 1
@radeon_vm_block_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"VM page table size (%d) too small\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"VM page table size (%d) too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_check_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_check_arguments(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @radeon_vram_limit, align 4
  %5 = call i32 @radeon_check_pot_argument(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @radeon_vram_limit, align 4
  %12 = call i32 @dev_warn(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* @radeon_vram_limit, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @radeon_gart_size, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @radeon_gart_size_auto(i32 %19)
  store i32 %20, i32* @radeon_gart_size, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @radeon_gart_size, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @radeon_gart_size, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @radeon_gart_size_auto(i32 %32)
  store i32 %33, i32* @radeon_gart_size, align 4
  br label %49

34:                                               ; preds = %21
  %35 = load i32, i32* @radeon_gart_size, align 4
  %36 = call i32 @radeon_check_pot_argument(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @radeon_gart_size, align 4
  %43 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @radeon_gart_size_auto(i32 %46)
  store i32 %47, i32* @radeon_gart_size, align 4
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* @radeon_gart_size, align 4
  %51 = shl i32 %50, 20
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @radeon_agpmode, align 4
  switch i32 %55, label %57 [
    i32 -1, label %56
    i32 0, label %56
    i32 1, label %56
    i32 2, label %56
    i32 4, label %56
    i32 8, label %56
  ]

56:                                               ; preds = %49, %49, %49, %49, %49, %49
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @radeon_agpmode, align 4
  %62 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* @radeon_agpmode, align 4
  br label %63

63:                                               ; preds = %57, %56
  %64 = load i32, i32* @radeon_vm_size, align 4
  %65 = call i32 @radeon_check_pot_argument(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @radeon_vm_size, align 4
  %72 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  store i32 4, i32* @radeon_vm_size, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32, i32* @radeon_vm_size, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @radeon_vm_size, align 4
  %81 = call i32 @dev_warn(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  store i32 4, i32* @radeon_vm_size, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* @radeon_vm_size, align 4
  %84 = icmp sgt i32 %83, 1024
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @radeon_vm_size, align 4
  %90 = call i32 @dev_warn(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  store i32 4, i32* @radeon_vm_size, align 4
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @radeon_vm_block_size, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32, i32* @radeon_vm_size, align 4
  %96 = call i32 @ilog2(i32 %95)
  %97 = add nsw i32 %96, 18
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* @radeon_vm_size, align 4
  %99 = icmp sle i32 %98, 8
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %3, align 4
  %102 = sub i32 %101, 9
  store i32 %102, i32* @radeon_vm_block_size, align 4
  br label %107

103:                                              ; preds = %94
  %104 = load i32, i32* %3, align 4
  %105 = add i32 %104, 3
  %106 = udiv i32 %105, 2
  store i32 %106, i32* @radeon_vm_block_size, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %118

108:                                              ; preds = %91
  %109 = load i32, i32* @radeon_vm_block_size, align 4
  %110 = icmp slt i32 %109, 9
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @radeon_vm_block_size, align 4
  %116 = call i32 @dev_warn(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  store i32 9, i32* @radeon_vm_block_size, align 4
  br label %117

117:                                              ; preds = %111, %108
  br label %118

118:                                              ; preds = %117, %107
  %119 = load i32, i32* @radeon_vm_block_size, align 4
  %120 = icmp sgt i32 %119, 24
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @radeon_vm_size, align 4
  %123 = mul nsw i32 %122, 1024
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* @radeon_vm_block_size, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121, %118
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @radeon_vm_block_size, align 4
  %134 = call i32 @dev_warn(i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  store i32 9, i32* @radeon_vm_block_size, align 4
  br label %135

135:                                              ; preds = %129, %121
  ret void
}

declare dso_local i32 @radeon_check_pot_argument(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_gart_size_auto(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
