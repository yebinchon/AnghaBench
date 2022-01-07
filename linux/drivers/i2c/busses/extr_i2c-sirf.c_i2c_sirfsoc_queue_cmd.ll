; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_i2c = type { i32, i32, i32, i32, i32*, i64, i64, i64 }

@SIRFSOC_I2C_CMD_BUF_MAX = common dso_local global i32 0, align 4
@SIRFSOC_I2C_READ = common dso_local global i32 0, align 4
@SIRFSOC_I2C_STOP = common dso_local global i32 0, align 4
@SIRFSOC_I2C_NACK = common dso_local global i32 0, align 4
@SIRFSOC_I2C_WRITE = common dso_local global i32 0, align 4
@SIRFSOC_I2C_START_CMD = common dso_local global i32 0, align 4
@SIRFSOC_I2C_CMD_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_i2c*)* @i2c_sirfsoc_queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_sirfsoc_queue_cmd(%struct.sirfsoc_i2c* %0) #0 {
  %2 = alloca %struct.sirfsoc_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sirfsoc_i2c* %0, %struct.sirfsoc_i2c** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %53, %9
  %11 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %12 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SIRFSOC_I2C_CMD_BUF_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %20, %10
  %27 = phi i1 [ false, %10 ], [ %25, %20 ]
  br i1 %27, label %28, label %67

28:                                               ; preds = %26
  %29 = load i32, i32* @SIRFSOC_I2C_READ, align 4
  %30 = call i32 @SIRFSOC_I2C_CMD_RP(i32 0)
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %28
  %43 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %44 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @SIRFSOC_I2C_STOP, align 4
  %49 = load i32, i32* @SIRFSOC_I2C_NACK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %42, %28
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %56 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %59 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = call i64 @SIRFSOC_I2C_CMD(i32 %60)
  %63 = add nsw i64 %57, %62
  %64 = call i32 @writel(i32 %54, i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %10

67:                                               ; preds = %26
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %143

71:                                               ; preds = %1
  br label %72

72:                                               ; preds = %110, %71
  %73 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %74 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SIRFSOC_I2C_CMD_BUF_MAX, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %81 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br label %87

87:                                               ; preds = %79, %72
  %88 = phi i1 [ false, %72 ], [ %86, %79 ]
  br i1 %88, label %89, label %142

89:                                               ; preds = %87
  %90 = load i32, i32* @SIRFSOC_I2C_WRITE, align 4
  %91 = call i32 @SIRFSOC_I2C_CMD_RP(i32 0)
  %92 = or i32 %90, %91
  store i32 %92, i32* %3, align 4
  %93 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %94 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %95, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %89
  %102 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %103 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @SIRFSOC_I2C_STOP, align 4
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %101, %89
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %113 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %116 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = call i64 @SIRFSOC_I2C_CMD(i32 %117)
  %120 = add nsw i64 %114, %119
  %121 = call i32 @writel(i32 %111, i64 %120)
  %122 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %123 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %126 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %133 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %136 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = call i64 @SIRFSOC_I2C_CMD(i32 %137)
  %140 = add nsw i64 %134, %139
  %141 = call i32 @writel(i32 %131, i64 %140)
  br label %72

142:                                              ; preds = %87
  br label %143

143:                                              ; preds = %142, %67
  %144 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %145 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = load i32, i32* @SIRFSOC_I2C_START_CMD, align 4
  %147 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %148 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SIRFSOC_I2C_CMD_START, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  ret void
}

declare dso_local i32 @SIRFSOC_I2C_CMD_RP(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @SIRFSOC_I2C_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
