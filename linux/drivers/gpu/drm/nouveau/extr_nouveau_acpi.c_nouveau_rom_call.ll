; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_acpi.c_nouveau_rom_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_acpi.c_nouveau_rom_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to evaluate ROM got %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @nouveau_rom_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_rom_call(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %union.acpi_object], align 16
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca %struct.acpi_object_list, align 8
  %14 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 1
  store %union.acpi_object* %21, %union.acpi_object** %22, align 8
  %23 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %24 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to i8**
  store i8* %23, i8** %25, align 16
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 0
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 16
  %30 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %31 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 1
  %32 = bitcast %union.acpi_object* %31 to i8**
  store i8* %30, i8** %32, align 16
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %11, i64 0, i64 1
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 16
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @acpi_evaluate_object(i32 %37, i32* null, %struct.acpi_object_list* %13, %struct.acpi_buffer* %14)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @acpi_format_exception(i32 %43)
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %73

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %union.acpi_object*
  store %union.acpi_object* %51, %union.acpi_object** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @min(i32 %52, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i32* %62, i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @kfree(i64 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %48, %42
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
