; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_driver_start_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_driver_start_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32*, i64, i32 }
%struct.TYPE_9__ = type { i64, i32*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i32 0, align 4
@R600_WB_EVENT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fence failed to get scratch register\0A\00", align 1
@RADEON_WB_SCRATCH_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"fence driver on ring %d use gpu addr 0x%016llx and cpu addr 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @radeon_scratch_free(%struct.radeon_device* %8, i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @radeon_ring_supports_scratch_reg(%struct.radeon_device* %24, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %114, label %33

33:                                               ; preds = %23, %2
  %34 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @R600_RING_TYPE_UVD_INDEX, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %33
  %45 = load i32, i32* @R600_WB_EVENT_OFFSET, align 4
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i32* %56, i32** %63, align 8
  %64 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i64 %70, i64* %77, align 8
  br label %113

78:                                               ; preds = %33
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ALIGN(i32 %83, i32 8)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32* %91, i32** %98, align 8
  %99 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %78, %44
  br label %177

114:                                              ; preds = %23
  %115 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %116 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = call i32 @radeon_scratch_get(%struct.radeon_device* %115, i32* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %217

132:                                              ; preds = %114
  %133 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %133, %141
  %143 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %142, %146
  store i32 %147, i32* %6, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sdiv i32 %152, 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  store i32* %155, i32** %162, align 8
  %163 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  store i64 %169, i64* %176, align 8
  br label %177

177:                                              ; preds = %132, %113
  %178 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %179 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 4
  %186 = call i32 @atomic64_read(i32* %185)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @radeon_fence_write(%struct.radeon_device* %178, i32 %186, i32 %187)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 0
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @dev_info(i32 %198, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %199, i64 %207, i32* %215)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %177, %126
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ring_supports_scratch_reg(%struct.radeon_device*, i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @radeon_scratch_get(%struct.radeon_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_fence_write(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
