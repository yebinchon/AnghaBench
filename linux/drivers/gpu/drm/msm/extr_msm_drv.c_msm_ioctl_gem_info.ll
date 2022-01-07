; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_ioctl_gem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_msm_gem_info = type { i32, i32, i32, i32, i64 }
%struct.drm_gem_object = type { i32 }
%struct.msm_gem_object = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @msm_ioctl_gem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_ioctl_gem_info(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_msm_gem_info*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.msm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_msm_gem_info*
  store %struct.drm_msm_gem_info* %14, %struct.drm_msm_gem_info** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %16 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %183

22:                                               ; preds = %3
  %23 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %24 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 131, label %26
    i32 128, label %35
    i32 130, label %35
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %28 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %183

34:                                               ; preds = %26
  br label %39

35:                                               ; preds = %22, %22
  br label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %183

39:                                               ; preds = %35, %34
  %40 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %41 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %42 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %40, i32 %43)
  store %struct.drm_gem_object* %44, %struct.drm_gem_object** %9, align 8
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %46 = icmp ne %struct.drm_gem_object* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %183

50:                                               ; preds = %39
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %52 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %51)
  store %struct.msm_gem_object* %52, %struct.msm_gem_object** %10, align 8
  %53 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %54 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %179 [
    i32 129, label %56
    i32 131, label %61
    i32 128, label %67
    i32 130, label %133
  ]

56:                                               ; preds = %50
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %58 = call i32 @msm_gem_mmap_offset(%struct.drm_gem_object* %57)
  %59 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %60 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %179

61:                                               ; preds = %50
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %64 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %65 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %64, i32 0, i32 2
  %66 = call i32 @msm_ioctl_gem_info_iova(%struct.drm_device* %62, %struct.drm_gem_object* %63, i32* %65)
  store i32 %66, i32* %12, align 4
  br label %179

67:                                               ; preds = %50
  %68 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %69 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %71, 8
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %179

76:                                               ; preds = %67
  %77 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %78 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %81 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @u64_to_user_ptr(i32 %82)
  %84 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %85 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @copy_from_user(i8* %79, i32 %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %91 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 0, i8* %93, align 1
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %179

96:                                               ; preds = %76
  %97 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %98 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %101 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8 0, i8* %104, align 1
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %129, %96
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %108 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %113 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @isprint(i8 signext %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %111
  %122 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %123 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %132

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %105

132:                                              ; preds = %121, %105
  br label %179

133:                                              ; preds = %50
  %134 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %135 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %140 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %143 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %12, align 4
  br label %179

150:                                              ; preds = %138, %133
  %151 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %152 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %156 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %158 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %150
  %162 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %163 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @u64_to_user_ptr(i32 %164)
  %166 = load %struct.msm_gem_object*, %struct.msm_gem_object** %10, align 8
  %167 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.drm_msm_gem_info*, %struct.drm_msm_gem_info** %8, align 8
  %170 = getelementptr inbounds %struct.drm_msm_gem_info, %struct.drm_msm_gem_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @copy_to_user(i32 %165, i8* %168, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %161
  %175 = load i32, i32* @EFAULT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %174, %161
  br label %178

178:                                              ; preds = %177, %150
  br label %179

179:                                              ; preds = %50, %178, %147, %132, %89, %73, %61, %56
  %180 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %181 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %180)
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %179, %47, %36, %31, %19
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_ioctl_gem_info_iova(%struct.drm_device*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @copy_to_user(i32, i8*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
