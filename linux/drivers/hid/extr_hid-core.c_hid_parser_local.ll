; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_parser_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_parser_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hid_item = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"nested delimiters\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bogus close delimiter\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"alternative usage ignored\0A\00", align 1
@HID_MAX_USAGES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ignoring exceeding usage max\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"no more usage index available\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"hid_add_usage failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown local item tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, %struct.hid_item*)* @hid_parser_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_parser_local(%struct.hid_parser* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca %struct.hid_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store %struct.hid_item* %1, %struct.hid_item** %5, align 8
  %9 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %10 = call i32 @item_udata(%struct.hid_item* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %12 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %165 [
    i32 131, label %14
    i32 130, label %57
    i32 128, label %72
    i32 129, label %85
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %19 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %25 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @hid_err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %170

28:                                               ; preds = %17
  %29 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %30 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %35 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %56

39:                                               ; preds = %14
  %40 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %41 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %47 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @hid_err(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %170

50:                                               ; preds = %39
  %51 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %52 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %28
  store i32 0, i32* %3, align 4
  br label %170

57:                                               ; preds = %2
  %58 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %59 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

65:                                               ; preds = %57
  %66 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %69 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hid_add_usage(%struct.hid_parser* %66, i32 %67, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %170

72:                                               ; preds = %2
  %73 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %74 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %83 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %170

85:                                               ; preds = %2
  %86 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %87 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %96 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub i32 %94, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %102 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %100, %104
  %106 = load i32, i32* @HID_MAX_USAGES, align 4
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %93
  %109 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %110 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @dev_name(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %117 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = call i32 @hid_warn(%struct.TYPE_5__* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %108
  %121 = load i32, i32* @HID_MAX_USAGES, align 4
  %122 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %123 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %121, %125
  %127 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %128 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add i32 %126, %130
  %132 = sub i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ule i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %120
  %136 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %137 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = call i32 @hid_err(%struct.TYPE_5__* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %170

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %93
  %142 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %143 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %161, %141
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ule i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %154 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @hid_add_usage(%struct.hid_parser* %151, i32 %152, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %170

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %146

164:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %170

165:                                              ; preds = %2
  %166 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %167 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %165, %164, %158, %135, %91, %80, %78, %65, %63, %56, %45, %23
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @item_udata(%struct.hid_item*) #1

declare dso_local i32 @hid_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dbg_hid(i8*, ...) #1

declare dso_local i32 @hid_add_usage(%struct.hid_parser*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @hid_warn(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
