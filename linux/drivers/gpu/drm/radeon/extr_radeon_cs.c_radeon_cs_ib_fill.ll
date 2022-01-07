; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_cs_parser = type { i32, %struct.TYPE_4__, i32, %struct.radeon_cs_chunk*, %struct.TYPE_4__, %struct.radeon_cs_chunk*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.radeon_cs_chunk = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32 }

@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@CHIP_TAHITI = common dso_local global i64 0, align 8
@RADEON_IB_VM_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cs IB CONST too big: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get const ib !\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cs IB too big: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to get ib !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_cs_parser*)* @radeon_cs_ib_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_ib_fill(%struct.radeon_device* %0, %struct.radeon_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_chunk*, align 8
  %7 = alloca %struct.radeon_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_fpriv*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_cs_parser* %1, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_vm* null, %struct.radeon_vm** %7, align 8
  %10 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %10, i32 0, i32 3
  %12 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %11, align 8
  %13 = icmp eq %struct.radeon_cs_chunk* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %182

15:                                               ; preds = %2
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %15
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %26, align 8
  store %struct.radeon_fpriv* %27, %struct.radeon_fpriv** %9, align 8
  %28 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %9, align 8
  %29 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %28, i32 0, i32 0
  store %struct.radeon_vm* %29, %struct.radeon_vm** %7, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_TAHITI, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %22
  %36 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %36, i32 0, i32 5
  %38 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %37, align 8
  %39 = icmp ne %struct.radeon_cs_chunk* %38, null
  br i1 %39, label %40, label %101

40:                                               ; preds = %35
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %41, i32 0, i32 5
  %43 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %42, align 8
  store %struct.radeon_cs_chunk* %43, %struct.radeon_cs_chunk** %6, align 8
  %44 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RADEON_IB_VM_MAX_SIZE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %182

56:                                               ; preds = %40
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %61, i32 0, i32 4
  %63 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %64 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 4
  %68 = call i32 @radeon_ib_get(%struct.radeon_device* %57, i32 %60, %struct.TYPE_4__* %62, %struct.radeon_vm* %63, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %182

74:                                               ; preds = %56
  %75 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %79 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %85 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %92 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 4
  %95 = call i64 @copy_from_user(i32 %87, i32 %90, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %74
  %98 = load i32, i32* @EFAULT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %182

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %35, %22
  %102 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %102, i32 0, i32 3
  %104 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %103, align 8
  store %struct.radeon_cs_chunk* %104, %struct.radeon_cs_chunk** %6, align 8
  %105 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @RADEON_IB_VM_MAX_SIZE, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %112 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %182

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %15
  %119 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %119, i32 0, i32 3
  %121 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %120, align 8
  store %struct.radeon_cs_chunk* %121, %struct.radeon_cs_chunk** %6, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %123 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %124 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %127 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %126, i32 0, i32 1
  %128 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %129 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %130 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 4
  %133 = call i32 @radeon_ib_get(%struct.radeon_device* %122, i32 %125, %struct.TYPE_4__* %127, %struct.radeon_vm* %128, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %182

139:                                              ; preds = %118
  %140 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %141 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %144 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %147 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %139
  %151 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %156 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %159 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 4
  %162 = call i32 @memcpy(i32 %154, i64 %157, i32 %161)
  br label %181

163:                                              ; preds = %139
  %164 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %165 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %169 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %172 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %173, 4
  %175 = call i64 @copy_from_user(i32 %167, i32 %170, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load i32, i32* @EFAULT, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %182

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %150
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %177, %136, %110, %97, %71, %49, %14
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.TYPE_4__*, %struct.radeon_vm*, i32) #1

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
