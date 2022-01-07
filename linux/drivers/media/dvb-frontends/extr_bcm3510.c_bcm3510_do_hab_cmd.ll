; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_do_hab_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_do_hab_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }

@MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"do_hab_cmd: ilen=%d is too big!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"do_hab_cmd: olen=%d is too big!\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hab snd: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"hab get: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32)* @bcm3510_do_hab_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm3510_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @MAX_XFER_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* @MAX_XFER_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %15, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = mul nuw i64 4, %26
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %98

38:                                               ; preds = %7
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = mul nuw i64 4, %22
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %98

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %24, i64 2
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @memcpy(i32* %54, i32* %55, i32 %56)
  %58 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 2
  %61 = call i32 @dbufout(i32* %24, i32 %60, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_hab to i32 (i8*)*))
  %62 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %64 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %63, i32 0, i32 0
  %65 = call i64 @mutex_lock_interruptible(i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %98

70:                                               ; preds = %49
  %71 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 2
  %74 = call i32 @bcm3510_hab_send_request(%struct.bcm3510_state* %71, i32* %24, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 2
  %80 = call i32 @bcm3510_hab_get_response(%struct.bcm3510_state* %77, i32* %27, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  br label %93

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32 @dbufout(i32* %27, i32 %86, i32 (i8*)* bitcast (i32 (i8*, ...)* @deb_hab to i32 (i8*)*))
  %88 = call i32 (i8*, ...) @deb_hab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %27, i64 2
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %83, %82
  %94 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %95 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %19, align 4
  store i32 %97, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %98

98:                                               ; preds = %93, %67, %44, %33
  %99 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @deb_hab(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @dbufout(i32*, i32, i32 (i8*)*) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @bcm3510_hab_send_request(%struct.bcm3510_state*, i32*, i32) #2

declare dso_local i32 @bcm3510_hab_get_response(%struct.bcm3510_state*, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
