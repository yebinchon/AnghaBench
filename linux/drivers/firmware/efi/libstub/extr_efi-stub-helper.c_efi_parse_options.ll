; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1
@__nokaslr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@__quiet = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"efi=\00", align 1
@EFI_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"nochunk\00", align 1
@__chunk_size = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"novamap\00", align 1
@__novamap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_parse_options(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @strstr(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ugt i8* %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 1, i32* @__nokaslr, align 4
  br label %24

24:                                               ; preds = %23, %17, %13, %10
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ugt i8* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %24
  store i32 1, i32* @__quiet, align 4
  br label %44

44:                                               ; preds = %43, %37, %33, %30
  %45 = load i8*, i8** %3, align 8
  %46 = call i8* @strstr(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %50, i32* %2, align 4
  br label %118

51:                                               ; preds = %44
  %52 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %4, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %115, %51
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 32
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %116

68:                                               ; preds = %66
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %4, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %4, align 8
  store i64 -1, i64* @__chunk_size, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8*, i8** %4, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %4, align 8
  store i32 1, i32* @__novamap, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 32
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 44
  br label %102

102:                                              ; preds = %97, %92, %87
  %103 = phi i1 [ false, %92 ], [ false, %87 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  br label %87

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 44
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %4, align 8
  br label %115

115:                                              ; preds = %112, %107
  br label %56

116:                                              ; preds = %66
  %117 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %49
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
