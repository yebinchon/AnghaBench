; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_i2c_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_i2c_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_i2c_adapter = type { i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"port %d %s(%02x): register %02x, size: %d\0A\00", align 1
@FC_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wr\00", align 1
@FC_WRITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"port %d %s(%02x): register %02x: %*ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_i2c_request(%struct.flexcop_i2c_adapter* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flexcop_i2c_adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  store %struct.flexcop_i2c_adapter* %0, %struct.flexcop_i2c_adapter** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %17, align 4
  %22 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %23 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @FC_READ, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @deb_i2c(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %29, i32 %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %6
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @FC_WRITE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32* %11, i32** %12, align 8
  store i32 1, i32* %15, align 4
  br label %58

58:                                               ; preds = %57, %53, %50, %6
  %59 = load i32*, i32** %12, align 8
  store i32* %59, i32** %16, align 8
  br label %60

60:                                               ; preds = %96, %58
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = icmp sgt i32 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 4, %66 ], [ %68, %67 ]
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %17, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @FC_READ, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 @flexcop_i2c_read4(%struct.flexcop_i2c_adapter* %82, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %19, i32* %83)
  store i32 %84, i32* %14, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @flexcop_i2c_write4(i32 %88, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %19, i32* %89)
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %7, align 4
  br label %121

96:                                               ; preds = %91
  %97 = load i32, i32* %18, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %16, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %15, align 4
  br label %60

107:                                              ; preds = %60
  %108 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %109 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @FC_READ, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @deb_i2c_dump(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %110, i8* %115, i32 %116, i32 %117, i32 %118, i32* %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %107, %94
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @deb_i2c(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @flexcop_i2c_read4(%struct.flexcop_i2c_adapter*, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32*) #1

declare dso_local i32 @flexcop_i2c_write4(i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32*) #1

declare dso_local i32 @deb_i2c_dump(i8*, i32, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
