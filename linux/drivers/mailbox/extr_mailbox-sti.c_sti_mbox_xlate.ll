; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.sti_channel* }
%struct.sti_channel = type { i32, i32, %struct.sti_mbox_device* }
%struct.sti_mbox_device = type { i64, i32 }
%struct.mbox_controller = type { i64, i32, %struct.mbox_chan* }
%struct.of_phandle_args = type { i32* }
%struct.sti_mbox_pdata = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Invalid channel requested instance: %d channel: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Channel in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No free channels left\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Mbox: %s: Created channel: instance: %d channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @sti_mbox_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @sti_mbox_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.sti_mbox_device*, align 8
  %7 = alloca %struct.sti_mbox_pdata*, align 8
  %8 = alloca %struct.sti_channel*, align 8
  %9 = alloca %struct.mbox_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %13 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %14 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.sti_mbox_device* @dev_get_drvdata(i64 %15)
  store %struct.sti_mbox_device* %16, %struct.sti_mbox_device** %6, align 8
  %17 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %18 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.sti_mbox_pdata* @dev_get_platdata(i64 %19)
  store %struct.sti_mbox_pdata* %20, %struct.sti_mbox_pdata** %7, align 8
  store %struct.mbox_chan* null, %struct.mbox_chan** %9, align 8
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.sti_mbox_pdata*, %struct.sti_mbox_pdata** %7, align 8
  %33 = getelementptr inbounds %struct.sti_mbox_pdata, %struct.sti_mbox_pdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.sti_mbox_pdata*, %struct.sti_mbox_pdata** %7, align 8
  %39 = getelementptr inbounds %struct.sti_mbox_pdata, %struct.sti_mbox_pdata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36, %2
  %43 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %44 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i64, i8*, ...) @dev_err(i64 %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.mbox_chan* @ERR_PTR(i32 %50)
  store %struct.mbox_chan* %51, %struct.mbox_chan** %3, align 8
  br label %163

52:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %114, %52
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %56 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %53
  %60 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %61 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %60, i32 0, i32 2
  %62 = load %struct.mbox_chan*, %struct.mbox_chan** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %62, i64 %64
  %66 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %65, i32 0, i32 0
  %67 = load %struct.sti_channel*, %struct.sti_channel** %66, align 8
  store %struct.sti_channel* %67, %struct.sti_channel** %8, align 8
  %68 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %69 = icmp ne %struct.sti_channel* %68, null
  br i1 %69, label %70, label %100

70:                                               ; preds = %59
  %71 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %72 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %75 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %74, i32 0, i32 2
  %76 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %75, align 8
  %77 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %83 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %89 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %94 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i64, i8*, ...) @dev_err(i64 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.mbox_chan* @ERR_PTR(i32 %98)
  store %struct.mbox_chan* %99, %struct.mbox_chan** %3, align 8
  br label %163

100:                                              ; preds = %86, %80, %70, %59
  %101 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %102 = icmp ne %struct.mbox_chan* %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %105 = icmp ne %struct.sti_channel* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %108 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %107, i32 0, i32 2
  %109 = load %struct.mbox_chan*, %struct.mbox_chan** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %109, i64 %111
  store %struct.mbox_chan* %112, %struct.mbox_chan** %9, align 8
  br label %113

113:                                              ; preds = %106, %103, %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %53

117:                                              ; preds = %53
  %118 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %119 = icmp ne %struct.mbox_chan* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %117
  %121 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %122 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i64, i8*, ...) @dev_err(i64 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.mbox_chan* @ERR_PTR(i32 %126)
  store %struct.mbox_chan* %127, %struct.mbox_chan** %3, align 8
  br label %163

128:                                              ; preds = %117
  %129 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %130 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.sti_channel* @devm_kzalloc(i64 %131, i32 16, i32 %132)
  store %struct.sti_channel* %133, %struct.sti_channel** %8, align 8
  %134 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %135 = icmp ne %struct.sti_channel* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  %139 = call %struct.mbox_chan* @ERR_PTR(i32 %138)
  store %struct.mbox_chan* %139, %struct.mbox_chan** %3, align 8
  br label %163

140:                                              ; preds = %128
  %141 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %142 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %143 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %142, i32 0, i32 2
  store %struct.sti_mbox_device* %141, %struct.sti_mbox_device** %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %146 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %149 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %151 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %152 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %151, i32 0, i32 0
  store %struct.sti_channel* %150, %struct.sti_channel** %152, align 8
  %153 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %154 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %6, align 8
  %157 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @dev_info(i64 %155, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %159, i32 %160)
  %162 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  store %struct.mbox_chan* %162, %struct.mbox_chan** %3, align 8
  br label %163

163:                                              ; preds = %140, %136, %120, %92, %42
  %164 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %164
}

declare dso_local %struct.sti_mbox_device* @dev_get_drvdata(i64) #1

declare dso_local %struct.sti_mbox_pdata* @dev_get_platdata(i64) #1

declare dso_local i32 @dev_err(i64, i8*, ...) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

declare dso_local %struct.sti_channel* @devm_kzalloc(i64, i32, i32) #1

declare dso_local i32 @dev_info(i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
