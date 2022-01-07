; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_device_type_from_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_device_type_from_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_id = type { i32, i32, i8* }

@DEVICE_TYPE_LCD = common dso_local global i8* null, align 8
@DEVICE_TYPE_DFP = common dso_local global i8* null, align 8
@DEVICE_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (i32)* @device_type_from_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @device_type_from_device_id(i32 %0) #0 {
  %2 = alloca %struct.device_id, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %35 [
    i32 128, label %7
    i32 134, label %11
    i32 133, label %15
    i32 132, label %19
    i32 131, label %23
    i32 130, label %27
    i32 129, label %31
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** @DEVICE_TYPE_LCD, align 8
  %9 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 1, i32* %10, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %13 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 1, i32* %14, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %17 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 2, i32* %18, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %21 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 3, i32* %22, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %25 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 4, i32* %26, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %29 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 5, i32* %30, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load i8*, i8** @DEVICE_TYPE_DFP, align 8
  %33 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 6, i32* %34, align 4
  br label %40

35:                                               ; preds = %1
  %36 = call i32 (...) @BREAK_TO_DEBUGGER()
  %37 = load i8*, i8** @DEVICE_TYPE_UNKNOWN, align 8
  %38 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.device_id, %struct.device_id* %2, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %31, %27, %23, %19, %15, %11, %7
  %41 = bitcast %struct.device_id* %2 to { i64, i8* }*
  %42 = load { i64, i8* }, { i64, i8* }* %41, align 8
  ret { i64, i8* } %42
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
