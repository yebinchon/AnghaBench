; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.kfd_mem_obj = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Allocated mem_obj = %p for size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Found = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"gpu_addr = %p, cpu_addr = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Single bit\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"range_start = %d, range_end = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Allocation failed with mem_obj = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_gtt_sa_allocate(%struct.kfd_dev* %0, i32 %1, %struct.kfd_mem_obj** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kfd_mem_obj**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kfd_mem_obj** %2, %struct.kfd_mem_obj*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %215

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %19 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %22 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %20, %23
  %25 = icmp ugt i32 %17, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %215

29:                                               ; preds = %16
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.kfd_mem_obj* @kzalloc(i32 24, i32 %30)
  %32 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  store %struct.kfd_mem_obj* %31, %struct.kfd_mem_obj** %32, align 8
  %33 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %34 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %33, align 8
  %35 = icmp ne %struct.kfd_mem_obj* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %215

39:                                               ; preds = %29
  %40 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %41 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.kfd_mem_obj* %41, i32 %42)
  store i32 0, i32* %9, align 4
  %44 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %45 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  br label %47

47:                                               ; preds = %144, %39
  %48 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %49 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %52 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @find_next_zero_bit(i32 %50, i32 %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %61 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %205

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %68 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %67, align 8
  %69 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %72 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %71, align 8
  %73 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %75 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %79 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @kfd_gtt_sa_calc_gpu_addr(i32 %76, i32 %77, i32 %80)
  %82 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %83 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %82, align 8
  %84 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %83, i32 0, i32 3
  store i64 %81, i64* %84, align 8
  %85 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %86 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %90 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @kfd_gtt_sa_calc_cpu_addr(i32 %87, i32 %88, i32 %91)
  %93 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %94 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %93, align 8
  %95 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %97 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %96, align 8
  %98 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %102 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %101, align 8
  %103 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %100, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %108 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ule i32 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %65
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %115 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @set_bit(i32 %113, i32 %116)
  br label %201

118:                                              ; preds = %65
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %121 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %119, %122
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %167, %118
  %125 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %126 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %129 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = call i8* @find_next_zero_bit(i32 %127, i32 %130, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %136 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %135, align 8
  %137 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %139 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %138, align 8
  %140 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %124
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %9, align 4
  br label %47

146:                                              ; preds = %124
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %149 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %205

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %156 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ule i32 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %166

160:                                              ; preds = %153
  %161 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %162 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %160, %159
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = icmp ugt i32 %168, 0
  br i1 %169, label %124, label %170

170:                                              ; preds = %167
  %171 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %172 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %171, align 8
  %173 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %176 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %175, align 8
  %177 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %178)
  %180 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %181 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %180, align 8
  %182 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %197, %170
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %187 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %186, align 8
  %188 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ule i32 %185, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %194 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @set_bit(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %8, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %184

200:                                              ; preds = %184
  br label %201

201:                                              ; preds = %200, %111
  %202 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %203 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %202, i32 0, i32 2
  %204 = call i32 @mutex_unlock(i32* %203)
  store i32 0, i32* %4, align 4
  br label %215

205:                                              ; preds = %152, %64
  %206 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %207 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), %struct.kfd_mem_obj** %206)
  %208 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %209 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %208, i32 0, i32 2
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load %struct.kfd_mem_obj**, %struct.kfd_mem_obj*** %7, align 8
  %212 = call i32 @kfree(%struct.kfd_mem_obj** %211)
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %205, %201, %36, %26, %13
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.kfd_mem_obj* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @kfd_gtt_sa_calc_gpu_addr(i32, i32, i32) #1

declare dso_local i32 @kfd_gtt_sa_calc_cpu_addr(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kfd_mem_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
