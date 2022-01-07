; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_create_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_create_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }
%struct.ib_device = type { i32, i32 }
%struct.uapi_definition = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.uverbs_api_write_method = type { i64, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_api*, %struct.ib_device*, %struct.uapi_definition*, i32, i32*)* @uapi_create_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uapi_create_write(%struct.uverbs_api* %0, %struct.ib_device* %1, %struct.uapi_definition* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_api*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %struct.uapi_definition*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.uverbs_api_write_method*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uverbs_api* %0, %struct.uverbs_api** %7, align 8
  store %struct.ib_device* %1, %struct.ib_device** %8, align 8
  store %struct.uapi_definition* %2, %struct.uapi_definition** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %17 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %23 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @uapi_key_write_ex_method(i32 %25)
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %37

29:                                               ; preds = %5
  %30 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %31 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @uapi_key_write_method(i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.uverbs_api*, %struct.uverbs_api** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api* %38, i32 %39, i32 40, i32* %14)
  store %struct.uverbs_api_write_method* %40, %struct.uverbs_api_write_method** %12, align 8
  %41 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %42 = call i64 @IS_ERR(%struct.uverbs_api_write_method* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %46 = call i32 @PTR_ERR(%struct.uverbs_api_write_method* %45)
  store i32 %46, i32* %6, align 4
  br label %153

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %52 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %56 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi i1 [ false, %47 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %153

67:                                               ; preds = %59
  %68 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %69 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %73 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %75 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %78 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  %79 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %80 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %67
  %85 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %86 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %89 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BIT_ULL(i32 %91)
  %93 = and i32 %87, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %98 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %114

99:                                               ; preds = %67
  %100 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %101 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %104 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @BIT_ULL(i32 %106)
  %108 = and i32 %102, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %113 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %99, %84
  %115 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %116 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %150, label %120

120:                                              ; preds = %114
  %121 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %122 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %120
  %126 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %127 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %131 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %133 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %137 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %139 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %143 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.uapi_definition*, %struct.uapi_definition** %9, align 8
  %145 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %12, align 8
  %149 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %125, %120, %114
  %151 = load i32, i32* %13, align 4
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %150, %64, %44
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @uapi_key_write_ex_method(i32) #1

declare dso_local i32 @uapi_key_write_method(i32) #1

declare dso_local %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_api_write_method*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_api_write_method*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
