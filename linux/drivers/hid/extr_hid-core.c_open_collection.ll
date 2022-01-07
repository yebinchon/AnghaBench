; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_open_collection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_open_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.hid_collection* }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@HID_COLLECTION_STACK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to reallocate collection array\0A\00", align 1
@HID_COLLECTION_APPLICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, i32)* @open_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_collection(%struct.hid_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_collection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %12 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %18 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %21 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %26 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HID_COLLECTION_STACK_SIZE, align 4
  %29 = add i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %31 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @krealloc(i32* %32, i32 %36, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %203

44:                                               ; preds = %24
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %47 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %50 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %2
  %52 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %53 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %58 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %131

63:                                               ; preds = %51
  %64 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %65 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @array3_size(i32 16, i32 %68, i32 2)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.hid_collection* @kmalloc(i32 %69, i32 %70)
  store %struct.hid_collection* %71, %struct.hid_collection** %6, align 8
  %72 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %73 = icmp eq %struct.hid_collection* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %76 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @hid_err(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %203

81:                                               ; preds = %63
  %82 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %83 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %84 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load %struct.hid_collection*, %struct.hid_collection** %86, align 8
  %88 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %89 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 16, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(%struct.hid_collection* %82, %struct.hid_collection* %87, i32 %95)
  %97 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %98 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %99 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %97, i64 %103
  %105 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %106 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 16, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memset(%struct.hid_collection* %104, i32 0, i32 %112)
  %114 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %115 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load %struct.hid_collection*, %struct.hid_collection** %117, align 8
  %119 = call i32 @kfree(%struct.hid_collection* %118)
  %120 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %121 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %122 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store %struct.hid_collection* %120, %struct.hid_collection** %124, align 8
  %125 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %126 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %81, %51
  %132 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %133 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %138 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %141 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  store i32 %136, i32* %145, align 4
  %146 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %147 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  store i32 %150, i32* %8, align 4
  %152 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %153 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load %struct.hid_collection*, %struct.hid_collection** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %156, i64 %158
  store %struct.hid_collection* %159, %struct.hid_collection** %6, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %162 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %165 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %167 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %171 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %173 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %131
  br label %188

177:                                              ; preds = %131
  %178 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %179 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %182 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  %187 = load i32, i32* %186, align 4
  br label %188

188:                                              ; preds = %177, %176
  %189 = phi i32 [ -1, %176 ], [ %187, %177 ]
  %190 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %191 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @HID_COLLECTION_APPLICATION, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %197 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %196, i32 0, i32 3
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %195, %188
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %74, %41
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local %struct.hid_collection* @kmalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @memcpy(%struct.hid_collection*, %struct.hid_collection*, i32) #1

declare dso_local i32 @memset(%struct.hid_collection*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hid_collection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
