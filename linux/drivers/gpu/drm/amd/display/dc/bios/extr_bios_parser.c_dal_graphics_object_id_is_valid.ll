; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_dal_graphics_object_id_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_dal_graphics_object_id_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_object_id = type { i32, i32, i32 }

@ENUM_ID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @dal_graphics_object_id_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dal_graphics_object_id_is_valid(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.graphics_object_id, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %7, align 4
  %8 = bitcast %struct.graphics_object_id* %3 to i8*
  %9 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  store i32 1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %13
    i32 130, label %13
  ]

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %31

13:                                               ; preds = %2, %2
  %14 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ENUM_ID_UNKNOWN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %13
  br label %31

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ENUM_ID_UNKNOWN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %20
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %19, %12
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
