; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@CYAPA_CMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i64)* @cyapa_gen3_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_write_buffer(%struct.cyapa* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @CYAPA_CMD_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %59, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %13, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* @CYAPA_CMD_LEN, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @CYAPA_CMD_LEN, align 4
  %36 = sext i32 %35 to i64
  br label %41

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i64 [ %36, %34 ], [ %40, %37 ]
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %44, i8* %45, align 16
  %46 = getelementptr inbounds i8, i8* %19, i64 1
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i8* %46, i32* %47, i64 %48)
  %50 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  %53 = call i32 @cyapa_i2c_reg_write_block(%struct.cyapa* %50, i32 0, i64 %52, i8* %19)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @CYAPA_CMD_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %20

64:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @cyapa_i2c_reg_write_block(%struct.cyapa*, i32, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
