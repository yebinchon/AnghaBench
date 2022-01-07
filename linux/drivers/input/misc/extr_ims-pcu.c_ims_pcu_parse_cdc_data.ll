; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_parse_cdc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_parse_cdc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ims_pcu = type { i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32, i32*, i8*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_host_interface* }
%struct.usb_cdc_union_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Incorrect number of endpoints on data interface (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"First endpoint on data interface is not BULK OUT\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Max OUT packet size is too small (%zd)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Second endpoint on data interface is not BULK IN\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Max IN packet size is too small (%zd)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.ims_pcu*)* @ims_pcu_parse_cdc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_parse_cdc_data(%struct.usb_interface* %0, %struct.ims_pcu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.ims_pcu*, align 8
  %6 = alloca %struct.usb_cdc_union_desc*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.ims_pcu* %1, %struct.ims_pcu** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = call %struct.usb_cdc_union_desc* @ims_pcu_get_cdc_union_desc(%struct.usb_interface* %8)
  store %struct.usb_cdc_union_desc* %9, %struct.usb_cdc_union_desc** %6, align 8
  %10 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %11 = icmp ne %struct.usb_cdc_union_desc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %185

15:                                               ; preds = %2
  %16 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %17 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %20 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @usb_ifnum_to_if(i32 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 9
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %27 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %26, i32 0, i32 9
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %185

33:                                               ; preds = %15
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 9
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %37, align 8
  store %struct.usb_host_interface* %38, %struct.usb_host_interface** %7, align 8
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %40 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %185

47:                                               ; preds = %33
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %54 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %53, i32 0, i32 7
  store i32* %52, i32** %54, align 8
  %55 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %56 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = call i8* @usb_endpoint_maxp(i32* %57)
  %59 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %60 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %62 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %65 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @usb_ifnum_to_if(i32 %63, i32 %66)
  %68 = bitcast i8* %67 to %struct.TYPE_6__*
  %69 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %70 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %69, i32 0, i32 5
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %72 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %71, i32 0, i32 5
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %47
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %185

78:                                               ; preds = %47
  %79 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %80 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.usb_host_interface*, %struct.usb_host_interface** %82, align 8
  store %struct.usb_host_interface* %83, %struct.usb_host_interface** %7, align 8
  %84 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %85 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %100

89:                                               ; preds = %78
  %90 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %91 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %94 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %185

100:                                              ; preds = %78
  %101 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %102 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %107 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %109 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @usb_endpoint_is_bulk_out(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %115 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %185

120:                                              ; preds = %100
  %121 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %122 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i8* @usb_endpoint_maxp(i32* %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %127 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %129 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 8
  br i1 %131, label %132, label %142

132:                                              ; preds = %120
  %133 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %134 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %137 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @dev_err(i32 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %185

142:                                              ; preds = %120
  %143 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %144 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %149 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %151 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @usb_endpoint_is_bulk_in(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %142
  %156 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %157 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, ...) @dev_err(i32 %158, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %185

162:                                              ; preds = %142
  %163 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %164 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = call i8* @usb_endpoint_maxp(i32* %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %169 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %171 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %184

174:                                              ; preds = %162
  %175 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %176 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %179 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @dev_err(i32 %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %185

184:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %174, %155, %132, %113, %89, %75, %44, %30, %12
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.usb_cdc_union_desc* @ims_pcu_get_cdc_union_desc(%struct.usb_interface*) #1

declare dso_local i8* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i8* @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usb_endpoint_is_bulk_out(i32*) #1

declare dso_local i32 @usb_endpoint_is_bulk_in(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
