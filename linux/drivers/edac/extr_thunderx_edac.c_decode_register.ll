; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_decode_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_decode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_descr = type { i64, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"\0A\09%s, %s\00", align 1
@ERR_CORRECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Corrected\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Uncorrected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.error_descr*, i32)* @decode_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_register(i8* %0, i64 %1, %struct.error_descr* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.error_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.error_descr* %2, %struct.error_descr** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %56, %4
  %11 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %12 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %17 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %22 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %20, %15, %10
  %26 = phi i1 [ false, %15 ], [ false, %10 ], [ %24, %20 ]
  br i1 %26, label %27, label %59

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %30 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %38 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ERR_CORRECTED, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %45 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %34, %27
  %57 = load %struct.error_descr*, %struct.error_descr** %7, align 8
  %58 = getelementptr inbounds %struct.error_descr, %struct.error_descr* %57, i32 1
  store %struct.error_descr* %58, %struct.error_descr** %7, align 8
  br label %10

59:                                               ; preds = %25
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
