; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, i32, i32, i32, i8*, %struct.card_info* }
%struct.card_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATOM_BIOS_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid BIOS magic\0A\00", align 1
@ATOM_ATI_MAGIC_PTR = common dso_local global i32 0, align 4
@ATOM_ATI_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid ATI magic\0A\00", align 1
@ATOM_ROM_TABLE_PTR = common dso_local global i64 0, align 8
@ATOM_ROM_MAGIC_PTR = common dso_local global i32 0, align 4
@ATOM_ROM_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid ATOM magic\0A\00", align 1
@ATOM_ROM_CMD_PTR = common dso_local global i64 0, align 8
@ATOM_ROM_DATA_PTR = common dso_local global i64 0, align 8
@ATOM_DATA_IIO_PTR = common dso_local global i64 0, align 8
@ATOM_ROM_PART_NUMBER_PTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ATOM BIOS: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atom_context* @amdgpu_atom_parse(%struct.card_info* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca %struct.card_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.card_info* %0, %struct.card_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.atom_context* @kzalloc(i32 32, i32 %10)
  store %struct.atom_context* %11, %struct.atom_context** %7, align 8
  %12 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %13 = icmp ne %struct.atom_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %112

15:                                               ; preds = %2
  %16 = load %struct.card_info*, %struct.card_info** %4, align 8
  %17 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %18 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %17, i32 0, i32 5
  store %struct.card_info* %16, %struct.card_info** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %21 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = call i32 @CU16(i64 0)
  %23 = load i32, i32* @ATOM_BIOS_MAGIC, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %28 = call i32 @kfree(%struct.atom_context* %27)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %112

29:                                               ; preds = %15
  %30 = load i32, i32* @ATOM_ATI_MAGIC_PTR, align 4
  %31 = call i8* @CSTR(i32 %30)
  %32 = load i32, i32* @ATOM_ATI_MAGIC, align 4
  %33 = load i32, i32* @ATOM_ATI_MAGIC, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = call i64 @strncmp(i8* %31, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %40 = call i32 @kfree(%struct.atom_context* %39)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %112

41:                                               ; preds = %29
  %42 = load i64, i64* @ATOM_ROM_TABLE_PTR, align 8
  %43 = call i32 @CU16(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ATOM_ROM_MAGIC_PTR, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @CSTR(i32 %46)
  %48 = load i32, i32* @ATOM_ROM_MAGIC, align 4
  %49 = load i32, i32* @ATOM_ROM_MAGIC, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i64 @strncmp(i8* %47, i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %56 = call i32 @kfree(%struct.atom_context* %55)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %112

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @ATOM_ROM_CMD_PTR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @CU16(i64 %61)
  %63 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %64 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @ATOM_ROM_DATA_PTR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @CU16(i64 %68)
  %70 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %71 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %73 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %74 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @ATOM_DATA_IIO_PTR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @CU16(i64 %78)
  %80 = add nsw i32 %79, 4
  %81 = call i32 @atom_index_iio(%struct.atom_context* %72, i32 %80)
  %82 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %83 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %57
  %87 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %88 = call i32 @amdgpu_atom_destroy(%struct.atom_context* %87)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %112

89:                                               ; preds = %57
  %90 = load i64, i64* @ATOM_ROM_PART_NUMBER_PTR, align 8
  %91 = call i32 @CU16(i64 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 128, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, i32* %9, align 4
  %97 = call i8* @CSTR(i32 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %106 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strlcpy(i32 %107, i8* %108, i32 4)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  store %struct.atom_context* %111, %struct.atom_context** %3, align 8
  br label %112

112:                                              ; preds = %110, %86, %53, %37, %25, %14
  %113 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  ret %struct.atom_context* %113
}

declare dso_local %struct.atom_context* @kzalloc(i32, i32) #1

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(%struct.atom_context*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @CSTR(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @atom_index_iio(%struct.atom_context*, i32) #1

declare dso_local i32 @amdgpu_atom_destroy(%struct.atom_context*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
