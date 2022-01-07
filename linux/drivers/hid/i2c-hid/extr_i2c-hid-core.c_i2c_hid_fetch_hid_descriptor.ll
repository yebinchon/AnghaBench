; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_fetch_hid_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_fetch_hid_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_hid = type { i32, %struct.i2c_hid_desc, %struct.i2c_client* }
%struct.i2c_hid_desc = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Using a HID descriptor override\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Fetching the HID descriptor\0A\00", align 1
@hid_descr_cmd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"hid_descr_cmd failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected HID descriptor bcdVersion (0x%04hx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"weird size of HID descriptor (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"HID Descriptor: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_hid*)* @i2c_hid_fetch_hid_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_fetch_hid_descriptor(%struct.i2c_hid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_hid*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_hid_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_hid* %0, %struct.i2c_hid** %3, align 8
  %8 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %11, i32 0, i32 1
  store %struct.i2c_hid_desc* %12, %struct.i2c_hid_desc** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.i2c_hid_desc* @i2c_hid_get_dmi_i2c_hid_desc_override(i32 %15)
  %17 = icmp ne %struct.i2c_hid_desc* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %20 = call i32 (%struct.i2c_hid*, i8*, ...) @i2c_hid_dbg(%struct.i2c_hid* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %21, i32 0, i32 1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.i2c_hid_desc* @i2c_hid_get_dmi_i2c_hid_desc_override(i32 %25)
  %27 = bitcast %struct.i2c_hid_desc* %22 to i8*
  %28 = bitcast %struct.i2c_hid_desc* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  br label %46

29:                                               ; preds = %1
  %30 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %31 = call i32 (%struct.i2c_hid*, i8*, ...) @i2c_hid_dbg(%struct.i2c_hid* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @i2c_hid_command(%struct.i2c_client* %32, i32* @hid_descr_cmd, i32 %35, i32 8)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %84

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %18
  %47 = load %struct.i2c_hid_desc*, %struct.i2c_hid_desc** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_hid_desc, %struct.i2c_hid_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = icmp ne i32 %50, 256
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.i2c_hid_desc*, %struct.i2c_hid_desc** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_hid_desc, %struct.i2c_hid_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %84

62:                                               ; preds = %46
  %63 = load %struct.i2c_hid_desc*, %struct.i2c_hid_desc** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_hid_desc, %struct.i2c_hid_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ne i64 %68, 8
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %84

77:                                               ; preds = %62
  %78 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.i2c_hid*, %struct.i2c_hid** %3, align 8
  %81 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.i2c_hid*, i8*, ...) @i2c_hid_dbg(%struct.i2c_hid* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %70, %52, %39
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.i2c_hid_desc* @i2c_hid_get_dmi_i2c_hid_desc_override(i32) #1

declare dso_local i32 @i2c_hid_dbg(%struct.i2c_hid*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_hid_command(%struct.i2c_client*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
