; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i32, i32, i32, i64, i32 }

@LM90_REG_R_CONVRATE = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG1 = common dso_local global i32 0, align 4
@adt7461 = common dso_local global i64 0, align 8
@tmp451 = common dso_local global i64 0, align 8
@LM90_FLAG_ADT7461_EXT = common dso_local global i32 0, align 4
@max6680 = common dso_local global i64 0, align 8
@max6696 = common dso_local global i64 0, align 8
@lm90_restore_conf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.lm90_data*)* @lm90_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_init_client(%struct.i2c_client* %0, %struct.lm90_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.lm90_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.lm90_data* %1, %struct.lm90_data** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @LM90_REG_R_CONVRATE, align 4
  %10 = call i32 @lm90_read_reg(%struct.i2c_client* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %18 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @LM90_REG_R_CONFIG1, align 4
  %21 = call i32 @lm90_read_reg(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %29 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %32 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %35 = call i32 @lm90_set_convrate(%struct.i2c_client* %33, %struct.lm90_data* %34, i32 500)
  %36 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %37 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @adt7461, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %43 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @tmp451, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41, %26
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @LM90_FLAG_ADT7461_EXT, align 4
  %53 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %54 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %60 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @max6680, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, 24
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %69 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @max6696, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, -9
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 191
  store i32 %78, i32* %6, align 4
  %79 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @lm90_update_confreg(%struct.lm90_data* %79, i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* @lm90_restore_conf, align 4
  %85 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %86 = call i32 @devm_add_action_or_reset(i32* %83, i32 %84, %struct.lm90_data* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %76, %24, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @lm90_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm90_set_convrate(%struct.i2c_client*, %struct.lm90_data*, i32) #1

declare dso_local i32 @lm90_update_confreg(%struct.lm90_data*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.lm90_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
