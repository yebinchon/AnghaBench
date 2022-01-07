; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, i32, i32, i8*, %struct.card_info* }
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
@ATOM_ROM_MSG_PTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ATOM BIOS: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atom_context* @atom_parse(%struct.card_info* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca %struct.card_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.card_info* %0, %struct.card_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.atom_context* @kzalloc(i32 32, i32 %11)
  store %struct.atom_context* %12, %struct.atom_context** %7, align 8
  %13 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %14 = icmp ne %struct.atom_context* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %157

16:                                               ; preds = %2
  %17 = load %struct.card_info*, %struct.card_info** %4, align 8
  %18 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %19 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %18, i32 0, i32 4
  store %struct.card_info* %17, %struct.card_info** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %22 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = call i32 @CU16(i64 0)
  %24 = load i32, i32* @ATOM_BIOS_MAGIC, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %29 = call i32 @kfree(%struct.atom_context* %28)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %157

30:                                               ; preds = %16
  %31 = load i32, i32* @ATOM_ATI_MAGIC_PTR, align 4
  %32 = call i8* @CSTR(i32 %31)
  %33 = load i32, i32* @ATOM_ATI_MAGIC, align 4
  %34 = load i32, i32* @ATOM_ATI_MAGIC, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = call i64 @strncmp(i8* %32, i32 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %41 = call i32 @kfree(%struct.atom_context* %40)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %157

42:                                               ; preds = %30
  %43 = load i64, i64* @ATOM_ROM_TABLE_PTR, align 8
  %44 = call i32 @CU16(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ATOM_ROM_MAGIC_PTR, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i8* @CSTR(i32 %47)
  %49 = load i32, i32* @ATOM_ROM_MAGIC, align 4
  %50 = load i32, i32* @ATOM_ROM_MAGIC, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = call i64 @strncmp(i8* %48, i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %57 = call i32 @kfree(%struct.atom_context* %56)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %157

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @ATOM_ROM_CMD_PTR, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @CU16(i64 %62)
  %64 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %65 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @ATOM_ROM_DATA_PTR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @CU16(i64 %69)
  %71 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %72 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %74 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %75 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @ATOM_DATA_IIO_PTR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @CU16(i64 %79)
  %81 = add nsw i32 %80, 4
  %82 = call i32 @atom_index_iio(%struct.atom_context* %73, i32 %81)
  %83 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %84 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %58
  %88 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  %89 = call i32 @atom_destroy(%struct.atom_context* %88)
  store %struct.atom_context* null, %struct.atom_context** %3, align 8
  br label %157

90:                                               ; preds = %58
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @ATOM_ROM_MSG_PTR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @CU16(i64 %94)
  %96 = call i8* @CSTR(i32 %95)
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %116, %90
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 13
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i1 [ true, %102 ], [ %111, %107 ]
  br label %114

114:                                              ; preds = %112, %97
  %115 = phi i1 [ false, %97 ], [ %113, %112 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  br label %97

119:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %150, %119
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 511
  br i1 %122, label %123, label %153

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 %130
  store i8 %128, i8* %131, align 1
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp slt i32 %136, 46
  br i1 %137, label %145, label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sgt i32 %143, 122
  br i1 %144, label %145, label %149

145:                                              ; preds = %138, %123
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 %147
  store i8 0, i8* %148, align 1
  br label %153

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %120

153:                                              ; preds = %145, %120
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %155 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %154)
  %156 = load %struct.atom_context*, %struct.atom_context** %7, align 8
  store %struct.atom_context* %156, %struct.atom_context** %3, align 8
  br label %157

157:                                              ; preds = %153, %87, %54, %38, %26, %15
  %158 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  ret %struct.atom_context* %158
}

declare dso_local %struct.atom_context* @kzalloc(i32, i32) #1

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(%struct.atom_context*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @CSTR(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @atom_index_iio(%struct.atom_context*, i32) #1

declare dso_local i32 @atom_destroy(%struct.atom_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
