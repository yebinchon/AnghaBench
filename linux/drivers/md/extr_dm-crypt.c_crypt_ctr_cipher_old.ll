; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Bad cipher specification\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad cipher key count specification\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cbc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ecb\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"IV mechanism required\00", align 1
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"essiv\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Digest algorithm missing for ESSIV mode\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"essiv(%s(%s),%s)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Error allocating crypto tfm\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Cannot allocate cipher strings\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*, i8*, i8**, i8**)* @crypt_ctr_cipher_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_cipher_old(%struct.dm_target* %0, i8* %1, i8* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.crypt_config*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %21 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %20, i32 0, i32 1
  %22 = load %struct.crypt_config*, %struct.crypt_config** %21, align 8
  store %struct.crypt_config* %22, %struct.crypt_config** %12, align 8
  store i8* null, i8** %17, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 40)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %5
  %29 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %30 = call i64 @crypt_integrity_aead(%struct.crypt_config* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %5
  %33 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %171

37:                                               ; preds = %28
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %13, align 8
  %39 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %16, align 8
  %40 = call i8* @strsep(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %45 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %64

46:                                               ; preds = %37
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 0
  %50 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %49, i8* %19)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %54 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @is_power_of_2(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %171

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %66 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %69 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %70, i8** %15, align 8
  %71 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i8**, i8*** %10, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i8**, i8*** %11, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i8**, i8*** %10, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81, %64
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  %86 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %86, align 8
  br label %87

87:                                               ; preds = %85, %81, %77
  %88 = load i8*, i8** %15, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %97 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %97, align 8
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %171

100:                                              ; preds = %91, %87
  %101 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kmalloc(i32 %101, i32 %102)
  store i8* %103, i8** %17, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %166

107:                                              ; preds = %100
  %108 = load i8**, i8*** %10, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load i8**, i8*** %10, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %111
  %117 = load i8**, i8*** %11, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %122 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %121, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8** %122, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @kfree(i8* %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %171

127:                                              ; preds = %116
  %128 = load i8*, i8** %17, align 8
  %129 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %130 = load i8*, i8** %15, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %128, i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %130, i8* %131, i8* %133)
  store i32 %134, i32* %18, align 4
  br label %141

135:                                              ; preds = %111, %107
  %136 = load i8*, i8** %17, align 8
  %137 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %136, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %138, i8* %139)
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %135, %127
  %142 = load i32, i32* %18, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %141
  %149 = load i8*, i8** %17, align 8
  %150 = call i32 @kfree(i8* %149)
  br label %166

151:                                              ; preds = %144
  %152 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i32 @crypt_alloc_tfms(%struct.crypt_config* %152, i8* %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %159 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %159, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = call i32 @kfree(i8* %160)
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %6, align 4
  br label %171

163:                                              ; preds = %151
  %164 = load i8*, i8** %17, align 8
  %165 = call i32 @kfree(i8* %164)
  store i32 0, i32* %6, align 4
  br label %171

166:                                              ; preds = %148, %106
  %167 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %168 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %167, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8** %168, align 8
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %166, %163, %157, %120, %95, %58, %32
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @crypt_alloc_tfms(%struct.crypt_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
