; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.opal_i2c_request = type { i32, i32, i8*, i8*, i8*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@OPAL_I2C_RAW_READ = common dso_local global i32 0, align 4
@OPAL_I2C_RAW_WRITE = common dso_local global i32 0, align 4
@OPAL_I2C_SM_READ = common dso_local global i32 0, align 4
@OPAL_I2C_SM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_opal_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_opal_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.opal_i2c_request, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = call i32 @memset(%struct.opal_i2c_request* %9, i32 0, i32 40)
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %120 [
    i32 1, label %17
    i32 2, label %51
  ]

17:                                               ; preds = %3
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I2C_M_RD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @OPAL_I2C_RAW_READ, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @OPAL_I2C_RAW_WRITE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 5
  store i32 %30, i32* %31, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @__pa(i32* %47)
  %49 = call i8* @cpu_to_be64(i32 %48)
  %50 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  br label %120

51:                                               ; preds = %3
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 1
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @I2C_M_RD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @OPAL_I2C_SM_READ, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @OPAL_I2C_SM_WRITE, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 5
  store i32 %64, i32* %65, align 8
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_be16(i32 %69)
  %71 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 4
  store i8* %70, i8** %71, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 0
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %98, %63
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 0
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i64 0
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %87, %95
  %97 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %77

101:                                              ; preds = %77
  %102 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 1
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 3
  store i8* %111, i8** %112, align 8
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i64 1
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @__pa(i32* %116)
  %118 = call i8* @cpu_to_be64(i32 %117)
  %119 = getelementptr inbounds %struct.opal_i2c_request, %struct.opal_i2c_request* %9, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %3, %101, %29
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @i2c_opal_send_request(i64 %121, %struct.opal_i2c_request* %9)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.opal_i2c_request*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @i2c_opal_send_request(i64, %struct.opal_i2c_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
