; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate cipher strings\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"capi:\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error decoding and setting key\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Error creating IV\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error initialising IV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*, i8*)* @crypt_ctr_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_cipher(%struct.dm_target* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.crypt_config*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 1
  %14 = load %struct.crypt_config*, %struct.crypt_config** %13, align 8
  store %struct.crypt_config* %14, %struct.crypt_config** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %140

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strstarts(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @crypt_ctr_cipher_new(%struct.dm_target* %34, i8* %35, i8* %36, i8** %9, i8** %10)
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @crypt_ctr_cipher_old(%struct.dm_target* %39, i8* %40, i8* %41, i8** %9, i8** %10)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %140

48:                                               ; preds = %43
  %49 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @crypt_ctr_ivmode(%struct.dm_target* %49, i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %140

56:                                               ; preds = %48
  %57 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @crypt_set_key(%struct.crypt_config* %57, i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %140

66:                                               ; preds = %56
  %67 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %68 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %73 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*, %struct.dm_target*, i8*)** %75, align 8
  %77 = icmp ne i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %80 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.crypt_config*, %struct.dm_target*, i8*)*, i32 (%struct.crypt_config*, %struct.dm_target*, i8*)** %82, align 8
  %84 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %85 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 %83(%struct.crypt_config* %84, %struct.dm_target* %85, i8* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %140

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %71, %66
  %96 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %97 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = icmp ne %struct.TYPE_2__* %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %102 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %104, align 8
  %106 = icmp ne i32 (%struct.crypt_config*)* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %109 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %111, align 8
  %113 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %114 = call i32 %112(%struct.crypt_config* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %119, align 8
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %140

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %100, %95
  %123 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %124 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %129 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %132 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memset(i32 %130, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %127, %122
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %117, %90, %62, %54, %46, %24
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i32 @crypt_ctr_cipher_new(%struct.dm_target*, i8*, i8*, i8**, i8**) #1

declare dso_local i32 @crypt_ctr_cipher_old(%struct.dm_target*, i8*, i8*, i8**, i8**) #1

declare dso_local i32 @crypt_ctr_ivmode(%struct.dm_target*, i8*) #1

declare dso_local i32 @crypt_set_key(%struct.crypt_config*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
