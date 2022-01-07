; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_read_tocentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_read_tocentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@GPCMD_READ_TOC_PMA_ATIP = common dso_local global i8 0, align 1
@RQF_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*, i32)* @cdrom_read_tocentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_tocentry(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @BLK_MAX_CDB, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i32, i32* @IDE_DBG_FUNC, align 4
  %20 = call i32 @ide_debug_log(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @BLK_MAX_CDB, align 4
  %22 = call i32 @memset(i8* %18, i32 0, i32 %21)
  %23 = load i8, i8* @GPCMD_READ_TOC_PMA_ATIP, align 1
  %24 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %23, i8* %24, align 16
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %18, i64 6
  store i8 %26, i8* %27, align 2
  %28 = load i32, i32* %12, align 4
  %29 = ashr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, i8* %18, i64 8
  store i8 %34, i8* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 %36, 6
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %18, i64 9
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %6
  %43 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 2, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %6
  %45 = load i32*, i32** %7, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @RQF_QUIET, align 4
  %48 = call i32 @ide_cd_queue_pc(i32* %45, i8* %18, i32 0, i8* %46, i32* %12, i32* null, i32 0, i32 %47)
  %49 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ide_debug_log(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(i32*, i8*, i32, i8*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
