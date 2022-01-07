; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_cmd_read_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_cmd_read_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@WIIMOTE_EXT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"extension ID: %6phC\0A\00", align 1
@WIIMOTE_EXT_NUNCHUK = common dso_local global i32 0, align 4
@WIIMOTE_EXT_CLASSIC_CONTROLLER = common dso_local global i32 0, align 4
@WIIMOTE_EXT_BALANCE_BOARD = common dso_local global i32 0, align 4
@WIIMOTE_EXT_PRO_CONTROLLER = common dso_local global i32 0, align 4
@WIIMOTE_EXT_DRUMS = common dso_local global i32 0, align 4
@WIIMOTE_EXT_GUITAR = common dso_local global i32 0, align 4
@WIIMOTE_EXT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_data*, i32*)* @wiimote_cmd_read_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_cmd_read_ext(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @wiimote_cmd_read(%struct.wiimote_data* %7, i32 10748154, i32* %8, i32 6)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 6
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @WIIMOTE_EXT_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %145

14:                                               ; preds = %2
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %16 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @hid_dbg(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %51

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @WIIMOTE_EXT_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %145

51:                                               ; preds = %44, %39, %34, %29, %24, %14
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @WIIMOTE_EXT_NUNCHUK, align 4
  store i32 %62, i32* %3, align 4
  br label %145

63:                                               ; preds = %56, %51
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @WIIMOTE_EXT_CLASSIC_CONTROLLER, align 4
  store i32 %74, i32* %3, align 4
  br label %145

75:                                               ; preds = %68, %63
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @WIIMOTE_EXT_BALANCE_BOARD, align 4
  store i32 %86, i32* %3, align 4
  br label %145

87:                                               ; preds = %80, %75
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @WIIMOTE_EXT_PRO_CONTROLLER, align 4
  store i32 %98, i32* %3, align 4
  br label %145

99:                                               ; preds = %92, %87
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @WIIMOTE_EXT_DRUMS, align 4
  store i32 %120, i32* %3, align 4
  br label %145

121:                                              ; preds = %114, %109, %104, %99
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @WIIMOTE_EXT_GUITAR, align 4
  store i32 %142, i32* %3, align 4
  br label %145

143:                                              ; preds = %136, %131, %126, %121
  %144 = load i32, i32* @WIIMOTE_EXT_UNKNOWN, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %141, %119, %97, %85, %73, %61, %49, %12
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @wiimote_cmd_read(%struct.wiimote_data*, i32, i32*, i32) #1

declare dso_local i32 @hid_dbg(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
