; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_model_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_model_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Wacom Cintiq\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Wacom Cintiq II\00", align 1
@F_COVERS_SCREEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Wacom Penpartner\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Wacom Graphire\00", align 1
@F_HAS_STYLUS2 = common dso_local global i32 0, align 4
@F_HAS_SCROLLWHEEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Wacom Digitizer II\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unsupported Wacom model %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"%s tablet, version %u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_handle_model_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_handle_model_response(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.wacom*, %struct.wacom** %2, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i8* @strrchr(i32* %9, i8 signext 86)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %3, i32* %4)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.wacom*, %struct.wacom** %2, align 8
  %23 = getelementptr inbounds %struct.wacom, %struct.wacom* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = load %struct.wacom*, %struct.wacom** %2, align 8
  %29 = getelementptr inbounds %struct.wacom, %struct.wacom* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  switch i32 %33, label %157 [
    i32 132, label %34
    i32 131, label %34
    i32 128, label %97
    i32 129, label %111
    i32 133, label %138
    i32 130, label %138
  ]

34:                                               ; preds = %21, %21
  %35 = load %struct.wacom*, %struct.wacom** %2, align 8
  %36 = getelementptr inbounds %struct.wacom, %struct.wacom* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.wacom*, %struct.wacom** %2, align 8
  %42 = getelementptr inbounds %struct.wacom, %struct.wacom* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = icmp eq i32 %46, 132
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load %struct.wacom*, %struct.wacom** %2, align 8
  %50 = getelementptr inbounds %struct.wacom, %struct.wacom* %49, i32 0, i32 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.wacom*, %struct.wacom** %2, align 8
  %54 = getelementptr inbounds %struct.wacom, %struct.wacom* %53, i32 0, i32 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 132, i32* %57, align 4
  br label %68

58:                                               ; preds = %34
  %59 = load %struct.wacom*, %struct.wacom** %2, align 8
  %60 = getelementptr inbounds %struct.wacom, %struct.wacom* %59, i32 0, i32 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = load %struct.wacom*, %struct.wacom** %2, align 8
  %64 = getelementptr inbounds %struct.wacom, %struct.wacom* %63, i32 0, i32 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 131, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %48
  %69 = load %struct.wacom*, %struct.wacom** %2, align 8
  %70 = getelementptr inbounds %struct.wacom, %struct.wacom* %69, i32 0, i32 1
  store i32 508, i32* %70, align 8
  %71 = load %struct.wacom*, %struct.wacom** %2, align 8
  %72 = getelementptr inbounds %struct.wacom, %struct.wacom* %71, i32 0, i32 2
  store i32 508, i32* %72, align 4
  %73 = load %struct.wacom*, %struct.wacom** %2, align 8
  %74 = getelementptr inbounds %struct.wacom, %struct.wacom* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load %struct.wacom*, %struct.wacom** %2, align 8
  %80 = getelementptr inbounds %struct.wacom, %struct.wacom* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %78, %83
  switch i32 %84, label %93 [
    i32 14129, label %85
    i32 13621, label %90
    i32 14384, label %90
  ]

85:                                               ; preds = %68
  %86 = load %struct.wacom*, %struct.wacom** %2, align 8
  %87 = getelementptr inbounds %struct.wacom, %struct.wacom* %86, i32 0, i32 1
  store i32 2540, i32* %87, align 8
  %88 = load %struct.wacom*, %struct.wacom** %2, align 8
  %89 = getelementptr inbounds %struct.wacom, %struct.wacom* %88, i32 0, i32 2
  store i32 2540, i32* %89, align 4
  br label %90

90:                                               ; preds = %68, %68, %85
  %91 = load %struct.wacom*, %struct.wacom** %2, align 8
  %92 = getelementptr inbounds %struct.wacom, %struct.wacom* %91, i32 0, i32 3
  store i32 2, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %68
  %94 = load i32, i32* @F_COVERS_SCREEN, align 4
  %95 = load %struct.wacom*, %struct.wacom** %2, align 8
  %96 = getelementptr inbounds %struct.wacom, %struct.wacom* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  br label %170

97:                                               ; preds = %21
  %98 = load %struct.wacom*, %struct.wacom** %2, align 8
  %99 = getelementptr inbounds %struct.wacom, %struct.wacom* %98, i32 0, i32 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %101, align 8
  %102 = load %struct.wacom*, %struct.wacom** %2, align 8
  %103 = getelementptr inbounds %struct.wacom, %struct.wacom* %102, i32 0, i32 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 128, i32* %106, align 4
  %107 = load %struct.wacom*, %struct.wacom** %2, align 8
  %108 = getelementptr inbounds %struct.wacom, %struct.wacom* %107, i32 0, i32 1
  store i32 1000, i32* %108, align 8
  %109 = load %struct.wacom*, %struct.wacom** %2, align 8
  %110 = getelementptr inbounds %struct.wacom, %struct.wacom* %109, i32 0, i32 2
  store i32 1000, i32* %110, align 4
  br label %170

111:                                              ; preds = %21
  %112 = load %struct.wacom*, %struct.wacom** %2, align 8
  %113 = getelementptr inbounds %struct.wacom, %struct.wacom* %112, i32 0, i32 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.wacom*, %struct.wacom** %2, align 8
  %117 = getelementptr inbounds %struct.wacom, %struct.wacom* %116, i32 0, i32 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 129, i32* %120, align 4
  %121 = load %struct.wacom*, %struct.wacom** %2, align 8
  %122 = getelementptr inbounds %struct.wacom, %struct.wacom* %121, i32 0, i32 1
  store i32 1016, i32* %122, align 8
  %123 = load %struct.wacom*, %struct.wacom** %2, align 8
  %124 = getelementptr inbounds %struct.wacom, %struct.wacom* %123, i32 0, i32 2
  store i32 1016, i32* %124, align 4
  %125 = load %struct.wacom*, %struct.wacom** %2, align 8
  %126 = getelementptr inbounds %struct.wacom, %struct.wacom* %125, i32 0, i32 5
  store i32 5103, i32* %126, align 8
  %127 = load %struct.wacom*, %struct.wacom** %2, align 8
  %128 = getelementptr inbounds %struct.wacom, %struct.wacom* %127, i32 0, i32 6
  store i32 3711, i32* %128, align 4
  %129 = load %struct.wacom*, %struct.wacom** %2, align 8
  %130 = getelementptr inbounds %struct.wacom, %struct.wacom* %129, i32 0, i32 3
  store i32 2, i32* %130, align 8
  %131 = load %struct.wacom*, %struct.wacom** %2, align 8
  %132 = getelementptr inbounds %struct.wacom, %struct.wacom* %131, i32 0, i32 7
  store i32 8, i32* %132, align 8
  %133 = load i32, i32* @F_HAS_STYLUS2, align 4
  %134 = load i32, i32* @F_HAS_SCROLLWHEEL, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.wacom*, %struct.wacom** %2, align 8
  %137 = getelementptr inbounds %struct.wacom, %struct.wacom* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  br label %170

138:                                              ; preds = %21, %21
  %139 = load %struct.wacom*, %struct.wacom** %2, align 8
  %140 = getelementptr inbounds %struct.wacom, %struct.wacom* %139, i32 0, i32 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.wacom*, %struct.wacom** %2, align 8
  %144 = getelementptr inbounds %struct.wacom, %struct.wacom* %143, i32 0, i32 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 130, i32* %147, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load i32, i32* %4, align 4
  %152 = icmp sle i32 %151, 2
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.wacom*, %struct.wacom** %2, align 8
  %155 = getelementptr inbounds %struct.wacom, %struct.wacom* %154, i32 0, i32 3
  store i32 0, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %150, %138
  br label %170

157:                                              ; preds = %21
  %158 = load %struct.wacom*, %struct.wacom** %2, align 8
  %159 = getelementptr inbounds %struct.wacom, %struct.wacom* %158, i32 0, i32 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct.wacom*, %struct.wacom** %2, align 8
  %163 = getelementptr inbounds %struct.wacom, %struct.wacom* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %164)
  %166 = load i32, i32* @ENODEV, align 4
  %167 = sub nsw i32 0, %166
  %168 = load %struct.wacom*, %struct.wacom** %2, align 8
  %169 = getelementptr inbounds %struct.wacom, %struct.wacom* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 8
  br label %183

170:                                              ; preds = %156, %111, %97, %93
  %171 = load %struct.wacom*, %struct.wacom** %2, align 8
  %172 = getelementptr inbounds %struct.wacom, %struct.wacom* %171, i32 0, i32 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load %struct.wacom*, %struct.wacom** %2, align 8
  %176 = getelementptr inbounds %struct.wacom, %struct.wacom* %175, i32 0, i32 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @dev_info(i32* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %170, %157
  ret void
}

declare dso_local i8* @strrchr(i32*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
