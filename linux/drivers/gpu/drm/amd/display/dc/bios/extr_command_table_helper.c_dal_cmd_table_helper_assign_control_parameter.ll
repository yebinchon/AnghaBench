; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper.c_dal_cmd_table_helper_assign_control_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper.c_dal_cmd_table_helper_assign_control_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_table_helper = type { i64 (i32, i32)*, i32 (i32)*, i64 (i64)* }
%struct.bp_encoder_control = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }

@TRANSMITTER_UNIPHY_B = common dso_local global i64 0, align 8
@TRANSMITTER_UNIPHY_D = common dso_local global i64 0, align 8
@TRANSMITTER_UNIPHY_F = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_cmd_table_helper_assign_control_parameter(%struct.command_table_helper* %0, %struct.bp_encoder_control* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.command_table_helper*, align 8
  %5 = alloca %struct.bp_encoder_control*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.command_table_helper* %0, %struct.command_table_helper** %4, align 8
  store %struct.bp_encoder_control* %1, %struct.bp_encoder_control** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %8 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TRANSMITTER_UNIPHY_B, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %14 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRANSMITTER_UNIPHY_D, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %20 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRANSMITTER_UNIPHY_F, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %12, %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.command_table_helper*, %struct.command_table_helper** %4, align 8
  %30 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %29, i32 0, i32 2
  %31 = load i64 (i64)*, i64 (i64)** %30, align 8
  %32 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %33 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 %31(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.command_table_helper*, %struct.command_table_helper** %4, align 8
  %41 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %40, i32 0, i32 1
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %44 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %50 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 10
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.command_table_helper*, %struct.command_table_helper** %4, align 8
  %57 = getelementptr inbounds %struct.command_table_helper, %struct.command_table_helper* %56, i32 0, i32 0
  %58 = load i64 (i32, i32)*, i64 (i32, i32)** %57, align 8
  %59 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %60 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %63 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 %58(i32 %61, i32 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.bp_encoder_control*, %struct.bp_encoder_control** %5, align 8
  %70 = getelementptr inbounds %struct.bp_encoder_control, %struct.bp_encoder_control* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
