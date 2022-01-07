; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_setreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @fsp_attr_set_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsp_attr_set_setreg(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @simple_strtoul(i8* %14, i8** %12, i32 16)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = icmp ugt i32 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %19, %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %67

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i64 @kstrtouint(i8* %32, i32 16, i32* %11)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %5, align 8
  br label %67

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = icmp ugt i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %67

44:                                               ; preds = %38
  %45 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %46 = call i64 @fsp_reg_write_enable(%struct.psmouse* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* @EIO, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %67

51:                                               ; preds = %44
  %52 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @fsp_reg_write(%struct.psmouse* %52, i32 %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* @EIO, align 8
  %59 = sub i64 0, %58
  br label %62

60:                                               ; preds = %51
  %61 = load i64, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i64 [ %59, %57 ], [ %61, %60 ]
  store i64 %63, i64* %13, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %65 = call i64 @fsp_reg_write_enable(%struct.psmouse* %64, i32 0)
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %62, %48, %41, %36, %27
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @fsp_reg_write_enable(%struct.psmouse*, i32) #1

declare dso_local i64 @fsp_reg_write(%struct.psmouse*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
