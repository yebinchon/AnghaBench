; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_handle_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_handle_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.sprd_i2c* }
%struct.sprd_i2c = type { i32, i32, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sprd_i2c_handle_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_handle_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sprd_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 0
  %10 = load %struct.sprd_i2c*, %struct.sprd_i2c** %9, align 8
  store %struct.sprd_i2c* %10, %struct.sprd_i2c** %7, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %13 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %12, i32 0, i32 4
  store %struct.i2c_msg* %11, %struct.i2c_msg** %13, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %18 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %23 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %25 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %24, i32 0, i32 1
  %26 = call i32 @reinit_completion(i32* %25)
  %27 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %28 = call i32 @sprd_i2c_reset_fifo(%struct.sprd_i2c* %27)
  %29 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %31 = call i32 @sprd_i2c_set_devaddr(%struct.sprd_i2c* %29, %struct.i2c_msg* %30)
  %32 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprd_i2c_set_count(%struct.sprd_i2c* %32, i32 %35)
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %45 = call i32 @sprd_i2c_opt_mode(%struct.sprd_i2c* %44, i32 1)
  %46 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %47 = call i32 @sprd_i2c_send_stop(%struct.sprd_i2c* %46, i32 1)
  br label %58

48:                                               ; preds = %3
  %49 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %50 = call i32 @sprd_i2c_opt_mode(%struct.sprd_i2c* %49, i32 0)
  %51 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @sprd_i2c_send_stop(%struct.sprd_i2c* %51, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I2C_M_RD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %67 = call i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c* %66, i32 1)
  br label %71

68:                                               ; preds = %58
  %69 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %70 = call i32 @sprd_i2c_data_transfer(%struct.sprd_i2c* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %73 = call i32 @sprd_i2c_opt_start(%struct.sprd_i2c* %72)
  %74 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %75 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %74, i32 0, i32 1
  %76 = call i32 @wait_for_completion(i32* %75)
  %77 = load %struct.sprd_i2c*, %struct.sprd_i2c** %7, align 8
  %78 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  ret i32 %79
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sprd_i2c_reset_fifo(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_set_devaddr(%struct.sprd_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @sprd_i2c_set_count(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_opt_mode(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_send_stop(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_data_transfer(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_opt_start(%struct.sprd_i2c*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
