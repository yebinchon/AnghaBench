; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_device_type_from_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_device_type_from_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_id = type { i32, i8*, i32 }

@DEVICE_TYPE_LCD = common dso_local global i8* null, align 8
@DEVICE_TYPE_CRT = common dso_local global i8* null, align 8
@DEVICE_TYPE_DFP = common dso_local global i8* null, align 8
@DEVICE_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_id*, i32)* @device_type_from_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_type_from_device_id(%struct.device_id* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = bitcast %struct.device_id* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %46 [
    i32 129, label %6
    i32 128, label %10
    i32 137, label %14
    i32 136, label %18
    i32 135, label %22
    i32 134, label %26
    i32 133, label %30
    i32 132, label %34
    i32 131, label %38
    i32 130, label %42
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** @DEVICE_TYPE_LCD, align 8
  %8 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 1, i32* %9, align 8
  br label %51

10:                                               ; preds = %2
  %11 = load i8*, i8** @DEVICE_TYPE_LCD, align 8
  %12 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 2, i32* %13, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load i8*, i8** @DEVICE_TYPE_CRT, align 8
  %16 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %51

18:                                               ; preds = %2
  %19 = load i8*, i8** @DEVICE_TYPE_CRT, align 8
  %20 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 2, i32* %21, align 8
  br label %51

22:                                               ; preds = %2
  %23 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %24 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %51

26:                                               ; preds = %2
  %27 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %28 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 2, i32* %29, align 8
  br label %51

30:                                               ; preds = %2
  %31 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %32 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 3, i32* %33, align 8
  br label %51

34:                                               ; preds = %2
  %35 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %36 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 4, i32* %37, align 8
  br label %51

38:                                               ; preds = %2
  %39 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %40 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 5, i32* %41, align 8
  br label %51

42:                                               ; preds = %2
  %43 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %44 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 6, i32* %45, align 8
  br label %51

46:                                               ; preds = %2
  %47 = call i32 (...) @BREAK_TO_DEBUGGER()
  %48 = load i8*, i8** @DEVICE_TYPE_UNKNOWN, align 8
  %49 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.device_id, %struct.device_id* %0, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
