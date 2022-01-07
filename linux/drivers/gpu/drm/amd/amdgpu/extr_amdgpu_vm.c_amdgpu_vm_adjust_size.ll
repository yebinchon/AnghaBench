; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_adjust_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_adjust_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sysinfo = type { i32, i64 }

@amdgpu_vm_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"VM size (%d) too large, max is %u GB\0A\00", align 1
@amdgpu_vm_block_size = common dso_local global i32 0, align 4
@AMDGPU_VM_PDB2 = common dso_local global i32 0, align 4
@AMDGPU_VM_PDB1 = common dso_local global i32 0, align 4
@AMDGPU_VM_PDB0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VMPT only supports 2~4+1 levels\0A\00", align 1
@AMDGPU_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@amdgpu_vm_fragment_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"vm size is %u GB, %u levels, block size is %u-bit, fragment size is %u-bit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vm_adjust_size(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sysinfo, align 8
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sub i32 %16, 30
  %18 = shl i32 1, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @amdgpu_vm_size, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load i32, i32* @amdgpu_vm_size, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @amdgpu_vm_size, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %26, %21
  br label %54

35:                                               ; preds = %5
  %36 = call i32 @si_meminfo(%struct.sysinfo* %14)
  %37 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %14, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %39, %41
  %43 = add nsw i32 %42, 1073741824
  %44 = sub nsw i32 %43, 1
  %45 = ashr i32 %44, 30
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = mul i32 %46, 3
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @min(i32 %49, i32 %50)
  %52 = call i8* @roundup_pow_of_two(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %35, %34
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 18
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i8* @roundup_pow_of_two(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @amdgpu_vm_block_size, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load i32, i32* @amdgpu_vm_block_size, align 4
  %72 = sub nsw i32 %71, 9
  %73 = load i32, i32* %13, align 4
  %74 = ashr i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %70, %54
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @fls64(i32 %76)
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @DIV_ROUND_UP(i64 %78, i32 9)
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @min(i32 %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %107 [
    i32 3, label %92
    i32 2, label %97
    i32 1, label %102
  ]

92:                                               ; preds = %75
  %93 = load i32, i32* @AMDGPU_VM_PDB2, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 4
  br label %112

97:                                               ; preds = %75
  %98 = load i32, i32* @AMDGPU_VM_PDB1, align 4
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  br label %112

102:                                              ; preds = %75
  %103 = load i32, i32* @AMDGPU_VM_PDB0, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 4
  br label %112

107:                                              ; preds = %75
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %102, %97, %92
  %113 = load i32, i32* @amdgpu_vm_block_size, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load i32, i32* @amdgpu_vm_block_size, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @AMDGPU_GPU_PAGE_SHIFT, align 4
  %119 = sub i32 %117, %118
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 9, %123
  %125 = sub i32 %119, %124
  %126 = call i8* @min(i32 %116, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 4
  br label %148

131:                                              ; preds = %112
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i32 9, i32* %140, align 4
  br label %147

141:                                              ; preds = %131
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @amdgpu_vm_get_block_size(i32 %142)
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %137
  br label %148

148:                                              ; preds = %147, %115
  %149 = load i32, i32* @amdgpu_vm_fragment_size, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  br label %161

156:                                              ; preds = %148
  %157 = load i32, i32* @amdgpu_vm_fragment_size, align 4
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @DRM_INFO(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %167, i32 %171, i32 %175)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i8* @roundup_pow_of_two(i8*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @fls64(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_vm_get_block_size(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
