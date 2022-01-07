; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32*, i32, i32*, i32)* @dib9000_fw_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_boot(%struct.dib9000_state* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %13 = call i32 @dib9000_write_word(%struct.dib9000_state* %12, i32 1225, i32 2)
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %15 = call i32 @dib9000_write_word(%struct.dib9000_state* %14, i32 1226, i32 5)
  %16 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %17 = call i32 @dib9000_write_word(%struct.dib9000_state* %16, i32 1542, i32 1)
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %19 = call i32 @dib9000_write_word(%struct.dib9000_state* %18, i32 1074, i32 0)
  %20 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %21 = call i32 @dib9000_write_word(%struct.dib9000_state* %20, i32 1075, i32 0)
  %22 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %23 = call i32 @dib9000_write_word(%struct.dib9000_state* %22, i32 1237, i32 0)
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %28 = call i32 @dib9000_write_word(%struct.dib9000_state* %27, i32 1024, i32 2)
  br label %32

29:                                               ; preds = %5
  %30 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %31 = call i32 @dib9000_write_word(%struct.dib9000_state* %30, i32 1024, i32 15)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %37 = call i32 @dib9000_write_word(%struct.dib9000_state* %36, i32 1040, i32 2)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dib9000_firmware_download(%struct.dib9000_state* %42, i32 0, i32 4660, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @dib9000_firmware_download(%struct.dib9000_state* %50, i32 1, i32 4660, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %59 = call i32 @dib9000_write_word(%struct.dib9000_state* %58, i32 1024, i32 0)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %65 = call i32 @dib9000_write_word(%struct.dib9000_state* %64, i32 1040, i32 0)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %71 = call i64 @dib9000_mbx_host_init(%struct.dib9000_state* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %105

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %82 = call i64 @dib9000_mbx_host_init(%struct.dib9000_state* %81, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %105

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %77
  %89 = call i32 @msleep(i32 100)
  %90 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %91 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %95 = call i64 @dib9000_risc_check_version(%struct.dib9000_state* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %105

100:                                              ; preds = %88
  %101 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %102 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 255, i32* %104, align 4
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %97, %84, %73
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @dib9000_firmware_download(%struct.dib9000_state*, i32, i32, i32*, i32) #1

declare dso_local i64 @dib9000_mbx_host_init(%struct.dib9000_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dib9000_risc_check_version(%struct.dib9000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
