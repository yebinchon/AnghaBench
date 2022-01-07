; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_set_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.hd_geometry }
%struct.hd_geometry = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Start sector is beyond the geometry limits.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_set_geometry(%struct.mapped_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca i64, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %7 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %8 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %11 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %9, %12
  %14 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %15 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %19 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %29 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %28, i32 0, i32 0
  %30 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %31 = bitcast %struct.hd_geometry* %29 to i8*
  %32 = bitcast %struct.hd_geometry* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @DMWARN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
