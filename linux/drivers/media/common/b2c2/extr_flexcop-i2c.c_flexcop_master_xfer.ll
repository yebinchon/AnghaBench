; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64, i32, i32*, i32 }
%struct.flexcop_i2c_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32*, i32)*, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@FC_READ = common dso_local global i32 0, align 4
@FC_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"i2c master_xfer failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @flexcop_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flexcop_i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.flexcop_i2c_adapter* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.flexcop_i2c_adapter* %12, %struct.flexcop_i2c_adapter** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I2C_M_RD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %156

29:                                               ; preds = %22, %15, %3
  %30 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %31 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i64 @mutex_lock_interruptible(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %156

39:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %141, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %144

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %44
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %53
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @I2C_M_RD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %49
  %60 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32*, i32)*, i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32*, i32)** %63, align 8
  %65 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %66 = load i32, i32* @FC_READ, align 4
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 %75
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i64 %84
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i64 %91
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %64(%struct.flexcop_i2c_adapter* %65, i32 %66, i32 %72, i32 %80, i32* %87, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %135

98:                                               ; preds = %49, %44
  %99 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %100 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32*, i32)*, i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32*, i32)** %102, align 8
  %104 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %105 = load i32, i32* @FC_WRITE, align 4
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i64 %108
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i64 %114
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i64 %129
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = call i32 %103(%struct.flexcop_i2c_adapter* %104, i32 %105, i32 %111, i32 %119, i32* %126, i32 %133)
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %98, %59
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @deb_i2c(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %144

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %40

144:                                              ; preds = %138, %40
  %145 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %8, align 8
  %146 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %152, %144
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %36, %28
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.flexcop_i2c_adapter* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @deb_i2c(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
