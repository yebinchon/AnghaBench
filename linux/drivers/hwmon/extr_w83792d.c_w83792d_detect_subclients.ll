; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_detect_subclients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_detect_subclients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.w83792d_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@force_subclients = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@W83792D_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"duplicate addresses 0x%x, use force_subclient\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83792d_detect_subclients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83792d_detect_subclients(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.w83792d_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.w83792d_data* %17, %struct.w83792d_data** %9, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** @force_subclients, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %1
  %26 = load i32*, i32** @force_subclients, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  store i32 2, i32* %4, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32*, i32** @force_subclients, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 72
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load i32*, i32** @force_subclients, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 79
  br i1 %48, label %49, label %60

49:                                               ; preds = %42, %35
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i32*, i32** @force_subclients, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %145

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %32

64:                                               ; preds = %32
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load i32, i32* @W83792D_REG_I2C_SUBADDR, align 4
  %67 = load i32*, i32** @force_subclients, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 7
  %71 = load i32*, i32** @force_subclients, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 7
  %75 = shl i32 %74, 4
  %76 = or i32 %70, %75
  %77 = call i32 @w83792d_write_value(%struct.i2c_client* %65, i32 %66, i32 %76)
  br label %78

78:                                               ; preds = %64, %25, %1
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = load i32, i32* @W83792D_REG_I2C_SUBADDR, align 4
  %81 = call i32 @w83792d_read_value(%struct.i2c_client* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %78
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 1
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 7
  %91 = add nsw i32 72, %90
  %92 = call i8* @devm_i2c_new_dummy_device(i32* %87, %struct.i2c_adapter* %88, i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_2__*
  %94 = load %struct.w83792d_data*, %struct.w83792d_data** %9, align 8
  %95 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 0
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %97, align 8
  br label %98

98:                                               ; preds = %85, %78
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 128
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %144, label %102

102:                                              ; preds = %98
  %103 = load %struct.w83792d_data*, %struct.w83792d_data** %9, align 8
  %104 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %105, i64 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = call i32 @IS_ERR(%struct.TYPE_2__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 7
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 7
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 1
  %120 = load %struct.w83792d_data*, %struct.w83792d_data** %9, align 8
  %121 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %145

130:                                              ; preds = %110, %102
  %131 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 4
  %136 = and i32 %135, 7
  %137 = add nsw i32 72, %136
  %138 = call i8* @devm_i2c_new_dummy_device(i32* %132, %struct.i2c_adapter* %133, i32 %137)
  %139 = bitcast i8* %138 to %struct.TYPE_2__*
  %140 = load %struct.w83792d_data*, %struct.w83792d_data** %9, align 8
  %141 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %142, i64 1
  store %struct.TYPE_2__* %139, %struct.TYPE_2__** %143, align 8
  br label %144

144:                                              ; preds = %130, %98
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %117, %49
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i8* @devm_i2c_new_dummy_device(i32*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @IS_ERR(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
