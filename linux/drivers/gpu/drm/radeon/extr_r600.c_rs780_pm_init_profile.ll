; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_rs780_pm_init_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_rs780_pm_init_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@PM_PROFILE_DEFAULT_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_SH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs780_pm_init_profile(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %213

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %12, i32* %19, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %23, i32* %30, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i32 1, i32* %198, align 4
  %199 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %200 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 3
  store i64 0, i64* %205, align 8
  %206 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  br label %630

213:                                              ; preds = %1
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %424

219:                                              ; preds = %213
  %220 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %221 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  store i32 %223, i32* %230, align 8
  %231 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  store i32 %234, i32* %241, align 4
  %242 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %243 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 3
  store i64 0, i64* %248, align 8
  %249 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %250 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %258, align 8
  %260 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  %263 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %265, align 8
  %267 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  store i32 1, i32* %269, align 4
  %270 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %271 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 3
  store i64 0, i64* %276, align 8
  %277 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %279, align 8
  %281 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  store i64 0, i64* %283, align 8
  %284 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 0
  store i32 1, i32* %290, align 8
  %291 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %292 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  store i32 1, i32* %297, align 4
  %298 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %299 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  %302 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 3
  store i64 0, i64* %304, align 8
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %307, align 8
  %309 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  store i64 0, i64* %311, align 8
  %312 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %313 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  store i32 1, i32* %318, align 8
  %319 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %320 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %321, align 8
  %323 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 1
  store i32 2, i32* %325, align 4
  %326 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %327 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 3
  store i64 0, i64* %332, align 8
  %333 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %335, align 8
  %337 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 2
  store i64 0, i64* %339, align 8
  %340 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  %344 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 0
  store i32 1, i32* %346, align 8
  %347 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %348 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %349, align 8
  %351 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 1
  store i32 1, i32* %353, align 4
  %354 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %355 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %356, align 8
  %358 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 3
  store i64 0, i64* %360, align 8
  %361 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %363, align 8
  %365 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 2
  store i64 0, i64* %367, align 8
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %370, align 8
  %372 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 0
  store i32 1, i32* %374, align 8
  %375 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %376 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %377, align 8
  %379 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 1
  store i32 1, i32* %381, align 4
  %382 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %383 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 2
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %384, align 8
  %386 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 3
  store i64 0, i64* %388, align 8
  %389 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 2
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %391, align 8
  %393 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 2
  store i64 0, i64* %395, align 8
  %396 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %398, align 8
  %400 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  %403 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %404 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %405, align 8
  %407 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 1
  store i32 2, i32* %409, align 4
  %410 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %411 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %412, align 8
  %414 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 3
  store i64 0, i64* %416, align 8
  %417 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %418 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %419, align 8
  %421 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 2
  store i64 0, i64* %423, align 8
  br label %629

424:                                              ; preds = %213
  %425 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %426 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %430 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 2
  %432 = load %struct.TYPE_3__*, %struct.TYPE_3__** %431, align 8
  %433 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 0
  store i32 %428, i32* %435, align 8
  %436 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %437 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %441 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 2
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %442, align 8
  %444 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 1
  store i32 %439, i32* %446, align 4
  %447 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %448 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 2
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %449, align 8
  %451 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 3
  store i64 0, i64* %453, align 8
  %454 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %455 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** %456, align 8
  %458 = load i64, i64* @PM_PROFILE_DEFAULT_IDX, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 2
  store i64 0, i64* %460, align 8
  %461 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %462 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 2
  %464 = load %struct.TYPE_3__*, %struct.TYPE_3__** %463, align 8
  %465 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 0
  store i32 2, i32* %467, align 8
  %468 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %469 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 2
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** %470, align 8
  %472 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 1
  store i32 2, i32* %474, align 4
  %475 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %476 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 2
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** %477, align 8
  %479 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 3
  store i64 0, i64* %481, align 8
  %482 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %483 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 2
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %484, align 8
  %486 = load i64, i64* @PM_PROFILE_LOW_SH_IDX, align 8
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 2
  store i64 0, i64* %488, align 8
  %489 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %490 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 2
  %492 = load %struct.TYPE_3__*, %struct.TYPE_3__** %491, align 8
  %493 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %492, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 0
  store i32 2, i32* %495, align 8
  %496 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %497 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 2
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %498, align 8
  %500 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 1
  store i32 2, i32* %502, align 4
  %503 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %504 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_3__*, %struct.TYPE_3__** %505, align 8
  %507 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %508 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %508, i32 0, i32 3
  store i64 0, i64* %509, align 8
  %510 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %511 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 2
  %513 = load %struct.TYPE_3__*, %struct.TYPE_3__** %512, align 8
  %514 = load i64, i64* @PM_PROFILE_MID_SH_IDX, align 8
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %515, i32 0, i32 2
  store i64 0, i64* %516, align 8
  %517 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %518 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 2
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** %519, align 8
  %521 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i32 0, i32 0
  store i32 2, i32* %523, align 8
  %524 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %525 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_3__*, %struct.TYPE_3__** %526, align 8
  %528 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 1
  store i32 3, i32* %530, align 4
  %531 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %532 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 2
  %534 = load %struct.TYPE_3__*, %struct.TYPE_3__** %533, align 8
  %535 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i32 0, i32 3
  store i64 0, i64* %537, align 8
  %538 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %539 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %539, i32 0, i32 2
  %541 = load %struct.TYPE_3__*, %struct.TYPE_3__** %540, align 8
  %542 = load i64, i64* @PM_PROFILE_HIGH_SH_IDX, align 8
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %543, i32 0, i32 2
  store i64 0, i64* %544, align 8
  %545 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %546 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %546, i32 0, i32 2
  %548 = load %struct.TYPE_3__*, %struct.TYPE_3__** %547, align 8
  %549 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %550 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %548, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 0
  store i32 2, i32* %551, align 8
  %552 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %553 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %553, i32 0, i32 2
  %555 = load %struct.TYPE_3__*, %struct.TYPE_3__** %554, align 8
  %556 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %557, i32 0, i32 1
  store i32 0, i32* %558, align 4
  %559 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %560 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 2
  %562 = load %struct.TYPE_3__*, %struct.TYPE_3__** %561, align 8
  %563 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %564, i32 0, i32 3
  store i64 0, i64* %565, align 8
  %566 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %567 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 2
  %569 = load %struct.TYPE_3__*, %struct.TYPE_3__** %568, align 8
  %570 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i64 %570
  %572 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %571, i32 0, i32 2
  store i64 0, i64* %572, align 8
  %573 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %574 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_3__*, %struct.TYPE_3__** %575, align 8
  %577 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %578 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %576, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %578, i32 0, i32 0
  store i32 2, i32* %579, align 8
  %580 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %581 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 2
  %583 = load %struct.TYPE_3__*, %struct.TYPE_3__** %582, align 8
  %584 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %585 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %583, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %585, i32 0, i32 1
  store i32 0, i32* %586, align 4
  %587 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %588 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 2
  %590 = load %struct.TYPE_3__*, %struct.TYPE_3__** %589, align 8
  %591 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %592 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %590, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %592, i32 0, i32 3
  store i64 0, i64* %593, align 8
  %594 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %595 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %595, i32 0, i32 2
  %597 = load %struct.TYPE_3__*, %struct.TYPE_3__** %596, align 8
  %598 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %599 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %597, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 2
  store i64 0, i64* %600, align 8
  %601 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %602 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i32 0, i32 2
  %604 = load %struct.TYPE_3__*, %struct.TYPE_3__** %603, align 8
  %605 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %606 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %604, i64 %605
  %607 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i32 0, i32 0
  store i32 2, i32* %607, align 8
  %608 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %609 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %609, i32 0, i32 2
  %611 = load %struct.TYPE_3__*, %struct.TYPE_3__** %610, align 8
  %612 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %613 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %611, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %613, i32 0, i32 1
  store i32 3, i32* %614, align 4
  %615 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %616 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %616, i32 0, i32 2
  %618 = load %struct.TYPE_3__*, %struct.TYPE_3__** %617, align 8
  %619 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %620 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %618, i64 %619
  %621 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %620, i32 0, i32 3
  store i64 0, i64* %621, align 8
  %622 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %623 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 2
  %625 = load %struct.TYPE_3__*, %struct.TYPE_3__** %624, align 8
  %626 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %627 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %627, i32 0, i32 2
  store i64 0, i64* %628, align 8
  br label %629

629:                                              ; preds = %424, %219
  br label %630

630:                                              ; preds = %629, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
