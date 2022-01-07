; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DM_CRYPT_KEY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_set_key(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %68

20:                                               ; preds = %15, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @crypt_set_keyring_key(%struct.crypt_config* %27, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %68

31:                                               ; preds = %20
  %32 = load i32, i32* @DM_CRYPT_KEY_VALID, align 4
  %33 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %37 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kzfree(i32* %38)
  %40 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %41 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %43 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %31
  %47 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %48 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %52 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @hex2bin(i32 %49, i8* %50, i64 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %68

57:                                               ; preds = %46, %31
  %58 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %59 = call i32 @crypt_setkey(%struct.crypt_config* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @DM_CRYPT_KEY_VALID, align 4
  %64 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %65 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %56, %26, %19
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @memset(i8* %69, i32 48, i32 %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @crypt_set_keyring_key(%struct.crypt_config*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i64 @hex2bin(i32, i8*, i64) #1

declare dso_local i32 @crypt_setkey(%struct.crypt_config*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
