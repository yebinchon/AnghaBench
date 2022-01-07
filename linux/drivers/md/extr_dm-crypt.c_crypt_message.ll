; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { i32, i8*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@DM_CRYPT_SUSPENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"not suspended during key manipulation.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wipe\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unrecognised message received.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @crypt_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypt_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load %struct.crypt_config*, %struct.crypt_config** %16, align 8
  store %struct.crypt_config* %17, %struct.crypt_config** %12, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %133

23:                                               ; preds = %5
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %132, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @DM_CRYPT_SUSPENDED, align 4
  %31 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %32 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %31, i32 0, i32 4
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = call i32 @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %137

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %119

42:                                               ; preds = %39
  %43 = load i8**, i8*** %9, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %119, label %48

48:                                               ; preds = %42
  %49 = load i8**, i8*** %9, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = call i32 @get_key_size(i8** %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %56 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54, %48
  %61 = load i8**, i8*** %9, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @memset(i8* %63, i32 48, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %137

71:                                               ; preds = %54
  %72 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @crypt_set_key(%struct.crypt_config* %72, i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %137

81:                                               ; preds = %71
  %82 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %83 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = icmp ne %struct.TYPE_2__* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %88 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %90, align 8
  %92 = icmp ne i32 (%struct.crypt_config*)* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %95 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %97, align 8
  %99 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %100 = call i32 %98(%struct.crypt_config* %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %93, %86, %81
  %102 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %103 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %108 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %111 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(i8* %109, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %106, %101
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  br label %137

119:                                              ; preds = %42, %39
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i8**, i8*** %9, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcasecmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %130 = call i32 @crypt_wipe_key(%struct.crypt_config* %129)
  store i32 %130, i32* %6, align 4
  br label %137

131:                                              ; preds = %122, %119
  br label %132

132:                                              ; preds = %131, %23
  br label %133

133:                                              ; preds = %132, %22
  %134 = call i32 @DMWARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %128, %117, %79, %60, %35
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @get_key_size(i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @crypt_set_key(%struct.crypt_config*, i8*) #1

declare dso_local i32 @crypt_wipe_key(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
