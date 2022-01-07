; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, %struct.cytp_data*, i64, {}*, i32, i32, i32, i32, i32 }
%struct.cytp_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to query Trackpad hardware.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"init: Unable to initialize Cypress absolute mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"init: Unable to set input params.\0A\00", align 1
@cypress_protocol_handler = common dso_local global i32 0, align 4
@cypress_set_rate = common dso_local global i32 0, align 4
@cypress_disconnect = common dso_local global i32 0, align 4
@cypress_reconnect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cytp_data* @kzalloc(i32 4, i32 %5)
  store %struct.cytp_data* %6, %struct.cytp_data** %4, align 8
  %7 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %8 = icmp ne %struct.cytp_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %14 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %15 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 2
  store %struct.cytp_data* %13, %struct.cytp_data** %15, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = call i32 @cypress_reset(%struct.psmouse* %18)
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = call i64 @cypress_query_hardware(%struct.psmouse* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = call i32 @psmouse_err(%struct.psmouse* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %63

26:                                               ; preds = %12
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i64 @cypress_set_absolute_mode(%struct.psmouse* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = call i32 @psmouse_err(%struct.psmouse* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %38 = call i64 @cypress_set_input_params(i32 %36, %struct.cytp_data* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i32 @psmouse_err(%struct.psmouse* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %63

43:                                               ; preds = %33
  %44 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %45 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @cypress_protocol_handler, align 4
  %47 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @cypress_set_rate, align 4
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @cypress_disconnect, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @cypress_reconnect, align 4
  %56 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %59 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %58, i32 0, i32 4
  %60 = bitcast {}** %59 to i32 (%struct.psmouse*)**
  store i32 (%struct.psmouse*)* @cypress_reset, i32 (%struct.psmouse*)** %60, align 8
  %61 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %62 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  store i32 0, i32* %2, align 4
  br label %70

63:                                               ; preds = %40, %30, %23
  %64 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %65 = call i32 @cypress_reset(%struct.psmouse* %64)
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 2
  store %struct.cytp_data* null, %struct.cytp_data** %67, align 8
  %68 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %69 = call i32 @kfree(%struct.cytp_data* %68)
  store i32 -1, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %43, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.cytp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @cypress_reset(%struct.psmouse*) #1

declare dso_local i64 @cypress_query_hardware(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @cypress_set_absolute_mode(%struct.psmouse*) #1

declare dso_local i64 @cypress_set_input_params(i32, %struct.cytp_data*) #1

declare dso_local i32 @kfree(%struct.cytp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
