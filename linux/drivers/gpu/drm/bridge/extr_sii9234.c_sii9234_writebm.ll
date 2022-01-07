; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_writebm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_writebm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32, i32, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"writebm: %4s[0x%02x] <- 0x%02x\0A\00", align 1
@sii9234_client_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*, i32, i32, i32, i32)* @sii9234_writebm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_writebm(%struct.sii9234* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sii9234*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %15 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %14, i32 0, i32 2
  %16 = load %struct.i2c_client**, %struct.i2c_client*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %16, i64 %18
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %13, align 8
  %21 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %22 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %27 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  br label %104

29:                                               ; preds = %5
  %30 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %37 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @sii9234_client_name, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %49 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %104

51:                                               ; preds = %29
  %52 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %53 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %58 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @sii9234_client_name, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %70 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %104

72:                                               ; preds = %51
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = or i32 %75, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %72
  %88 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %89 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @sii9234_client_name, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.sii9234*, %struct.sii9234** %7, align 8
  %101 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %87, %72
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %56, %35, %25
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
