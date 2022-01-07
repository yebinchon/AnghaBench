; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_cipher_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"capi:\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid AEAD cipher spec\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lmk\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"essiv\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Digest algorithm missing for ESSIV mode\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"essiv(%s,%s)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot allocate cipher string\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Error allocating crypto tfm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*, i8*, i8**, i8**)* @crypt_ctr_cipher_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_cipher_new(%struct.dm_target* %0, i8* %1, i8* %2, i8** %3, i8** %4) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %19 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 1
  %21 = load %struct.crypt_config*, %struct.crypt_config** %20, align 8
  store %struct.crypt_config* %21, %struct.crypt_config** %12, align 8
  %22 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 58)
  %35 = load i8**, i8*** %11, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %5
  %40 = load i8**, i8*** %11, align 8
  %41 = load i8*, i8** %40, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %39, %5
  %46 = load i8*, i8** %13, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 45)
  %48 = load i8**, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %10, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %53, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %14, align 8
  %60 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %61 = call i64 @crypt_integrity_aead(%struct.crypt_config* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @crypt_ctr_auth_cipher(%struct.crypt_config* %64, i8* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %155

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i8**, i8*** %10, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8**, i8*** %10, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %86 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %85, i32 0, i32 0
  store i32 64, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79, %75
  %88 = load i8**, i8*** %10, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %123

91:                                               ; preds = %87
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %123, label %96

96:                                               ; preds = %91
  %97 = load i8**, i8*** %11, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %102 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %102, align 8
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %155

105:                                              ; preds = %96
  %106 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %107 = load i8*, i8** %14, align 8
  %108 = load i8**, i8*** %11, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @snprintf(i8* %25, i32 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %107, i8* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113, %105
  %118 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %119, align 8
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %155

122:                                              ; preds = %113
  store i8* %25, i8** %14, align 8
  br label %123

123:                                              ; preds = %122, %91, %87
  %124 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %125 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %128 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @crypt_alloc_tfms(%struct.crypt_config* %129, i8* %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %136 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %136, align 8
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %155

138:                                              ; preds = %123
  %139 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %140 = call i64 @crypt_integrity_aead(%struct.crypt_config* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %144 = call i32 @any_tfm_aead(%struct.crypt_config* %143)
  %145 = call i32 @crypto_aead_ivsize(i32 %144)
  %146 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %147 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  br label %154

148:                                              ; preds = %138
  %149 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %150 = call i32 @any_tfm(%struct.crypt_config* %149)
  %151 = call i32 @crypto_skcipher_ivsize(i32 %150)
  %152 = load %struct.crypt_config*, %struct.crypt_config** %12, align 8
  %153 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %142
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %155

155:                                              ; preds = %154, %134, %117, %100, %69
  %156 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #2

declare dso_local i32 @crypt_ctr_auth_cipher(%struct.crypt_config*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @crypt_alloc_tfms(%struct.crypt_config*, i8*) #2

declare dso_local i32 @crypto_aead_ivsize(i32) #2

declare dso_local i32 @any_tfm_aead(%struct.crypt_config*) #2

declare dso_local i32 @crypto_skcipher_ivsize(i32) #2

declare dso_local i32 @any_tfm(%struct.crypt_config*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
