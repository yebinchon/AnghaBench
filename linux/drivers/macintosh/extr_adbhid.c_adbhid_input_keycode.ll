; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_input_keycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_input_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adbhid = type { i32, i32*, i32 }

@adbhid = common dso_local global %struct.adbhid** null, align 8
@restore_capslock_events = common dso_local global i64 0, align 8
@FLAG_CAPSLOCK_IGNORE_NEXT = common dso_local global i32 0, align 4
@FLAG_CAPSLOCK_TRANSLATE = common dso_local global i32 0, align 4
@FLAG_CAPSLOCK_DOWN = common dso_local global i32 0, align 4
@FLAG_POWER_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Spurious caps lock event (scancode 0xff).\0A\00", align 1
@KEY_CAPSLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unhandled ADB key (scancode %#02x) %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@ADB_KEY_CMD = common dso_local global i32 0, align 4
@ADB_KEY_FWDEL = common dso_local global i32 0, align 4
@FLAG_EMU_FWDEL_DOWN = common dso_local global i32 0, align 4
@FLAG_FN_KEY_PRESSED = common dso_local global i32 0, align 4
@FLAG_POWER_FROM_FN = common dso_local global i32 0, align 4
@PMAC_FTR_GET_MB_INFO = common dso_local global i32 0, align 4
@PMAC_MB_INFO_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @adbhid_input_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adbhid_input_keycode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adbhid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.adbhid**, %struct.adbhid*** @adbhid, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.adbhid*, %struct.adbhid** %11, i64 %13
  %15 = load %struct.adbhid*, %struct.adbhid** %14, align 8
  store %struct.adbhid* %15, %struct.adbhid** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 127
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 128
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @restore_capslock_events, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 135
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %30 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FLAG_CAPSLOCK_IGNORE_NEXT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @FLAG_CAPSLOCK_IGNORE_NEXT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %39 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %163

42:                                               ; preds = %28
  %43 = load i32, i32* @FLAG_CAPSLOCK_TRANSLATE, align 4
  %44 = load i32, i32* @FLAG_CAPSLOCK_DOWN, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %47 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %42
  br label %94

51:                                               ; preds = %25, %22
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %56 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FLAG_POWER_KEY_PRESSED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %54
  %62 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %63 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FLAG_CAPSLOCK_TRANSLATE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %61
  store i32 135, i32* %8, align 4
  %69 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %70 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FLAG_CAPSLOCK_DOWN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  %76 = load i32, i32* @FLAG_CAPSLOCK_DOWN, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %79 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %89

82:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  %83 = load i32, i32* @FLAG_CAPSLOCK_TRANSLATE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %86 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %75
  br label %92

90:                                               ; preds = %61
  %91 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %89
  br label %93

93:                                               ; preds = %92, %54, %51
  br label %94

94:                                               ; preds = %93, %50
  br label %95

95:                                               ; preds = %94, %3
  %96 = load i32, i32* %8, align 4
  switch i32 %96, label %120 [
    i32 135, label %97
  ]

97:                                               ; preds = %95
  %98 = load i64, i64* @restore_capslock_events, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %97
  %101 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %102 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @KEY_CAPSLOCK, align 4
  %105 = call i32 @input_report_key(i32 %103, i32 %104, i32 1)
  %106 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %107 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @input_sync(i32 %108)
  %110 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %111 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @KEY_CAPSLOCK, align 4
  %114 = call i32 @input_report_key(i32 %112, i32 %113, i32 0)
  %115 = load %struct.adbhid*, %struct.adbhid** %7, align 8
  %116 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @input_sync(i32 %117)
  br label %163

119:                                              ; preds = %97
  br label %120

120:                                              ; preds = %95, %119
  %121 = load %struct.adbhid**, %struct.adbhid*** @adbhid, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.adbhid*, %struct.adbhid** %121, i64 %123
  %125 = load %struct.adbhid*, %struct.adbhid** %124, align 8
  %126 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %120
  %135 = load %struct.adbhid**, %struct.adbhid*** @adbhid, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.adbhid*, %struct.adbhid** %135, i64 %137
  %139 = load %struct.adbhid*, %struct.adbhid** %138, align 8
  %140 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @input_report_key(i32 %141, i32 %142, i32 %146)
  %148 = load %struct.adbhid**, %struct.adbhid*** @adbhid, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.adbhid*, %struct.adbhid** %148, i64 %150
  %152 = load %struct.adbhid*, %struct.adbhid** %151, align 8
  %153 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @input_sync(i32 %154)
  br label %163

156:                                              ; preds = %120
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %162 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %157, i8* %161)
  br label %163

163:                                              ; preds = %35, %100, %156, %134
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
