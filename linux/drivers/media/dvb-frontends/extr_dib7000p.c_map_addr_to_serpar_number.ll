; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_map_addr_to_serpar_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_map_addr_to_serpar_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_msg*)* @map_addr_to_serpar_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_addr_to_serpar_number(%struct.i2c_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %0, %struct.i2c_msg** %3, align 8
  %4 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 15
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 17
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 15, i32* %28, align 4
  br label %93

29:                                               ; preds = %17
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 17, i32* %40, align 4
  br label %92

41:                                               ; preds = %29
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 19
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 16, i32* %52, align 4
  br label %91

53:                                               ; preds = %41
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 21
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 25
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 3
  store i32 %73, i32* %71, align 4
  br label %90

74:                                               ; preds = %60, %53
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 28
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 23, i32* %85, align 4
  br label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %95

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %48
  br label %92

92:                                               ; preds = %91, %36
  br label %93

93:                                               ; preds = %92, %24
  br label %94

94:                                               ; preds = %93, %10
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
