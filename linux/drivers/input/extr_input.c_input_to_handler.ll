; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_to_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_to_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.input_handler* }
%struct.input_handler = type { i32 (%struct.input_handle.0*, i32, i32, i32)*, i32 (%struct.input_handle.1*, %struct.input_value*, i32)*, i64 (%struct.input_handle.2*, i32, i32, i32)* }
%struct.input_handle.0 = type opaque
%struct.input_handle.1 = type opaque
%struct.input_handle.2 = type opaque
%struct.input_value = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handle*, %struct.input_value*, i32)* @input_to_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_to_handler(%struct.input_handle* %0, %struct.input_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handle*, align 8
  %6 = alloca %struct.input_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_handler*, align 8
  %9 = alloca %struct.input_value*, align 8
  %10 = alloca %struct.input_value*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %5, align 8
  store %struct.input_value* %1, %struct.input_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %12 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %11, i32 0, i32 0
  %13 = load %struct.input_handler*, %struct.input_handler** %12, align 8
  store %struct.input_handler* %13, %struct.input_handler** %8, align 8
  %14 = load %struct.input_value*, %struct.input_value** %6, align 8
  store %struct.input_value* %14, %struct.input_value** %9, align 8
  %15 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %16 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %15, i32 0, i32 2
  %17 = load i64 (%struct.input_handle.2*, i32, i32, i32)*, i64 (%struct.input_handle.2*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i64 (%struct.input_handle.2*, i32, i32, i32)* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %3
  %20 = load %struct.input_value*, %struct.input_value** %6, align 8
  store %struct.input_value* %20, %struct.input_value** %10, align 8
  br label %21

21:                                               ; preds = %58, %19
  %22 = load %struct.input_value*, %struct.input_value** %10, align 8
  %23 = load %struct.input_value*, %struct.input_value** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.input_value, %struct.input_value* %23, i64 %25
  %27 = icmp ne %struct.input_value* %22, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %21
  %29 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %30 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %29, i32 0, i32 2
  %31 = load i64 (%struct.input_handle.2*, i32, i32, i32)*, i64 (%struct.input_handle.2*, i32, i32, i32)** %30, align 8
  %32 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %33 = bitcast %struct.input_handle* %32 to %struct.input_handle.2*
  %34 = load %struct.input_value*, %struct.input_value** %10, align 8
  %35 = getelementptr inbounds %struct.input_value, %struct.input_value* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.input_value*, %struct.input_value** %10, align 8
  %38 = getelementptr inbounds %struct.input_value, %struct.input_value* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.input_value*, %struct.input_value** %10, align 8
  %41 = getelementptr inbounds %struct.input_value, %struct.input_value* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 %31(%struct.input_handle.2* %33, i32 %36, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %58

46:                                               ; preds = %28
  %47 = load %struct.input_value*, %struct.input_value** %9, align 8
  %48 = load %struct.input_value*, %struct.input_value** %10, align 8
  %49 = icmp ne %struct.input_value* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.input_value*, %struct.input_value** %9, align 8
  %52 = load %struct.input_value*, %struct.input_value** %10, align 8
  %53 = bitcast %struct.input_value* %51 to i8*
  %54 = bitcast %struct.input_value* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.input_value*, %struct.input_value** %9, align 8
  %57 = getelementptr inbounds %struct.input_value, %struct.input_value* %56, i32 1
  store %struct.input_value* %57, %struct.input_value** %9, align 8
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.input_value*, %struct.input_value** %10, align 8
  %60 = getelementptr inbounds %struct.input_value, %struct.input_value* %59, i32 1
  store %struct.input_value* %60, %struct.input_value** %10, align 8
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.input_value*, %struct.input_value** %9, align 8
  %63 = load %struct.input_value*, %struct.input_value** %6, align 8
  %64 = ptrtoint %struct.input_value* %62 to i64
  %65 = ptrtoint %struct.input_value* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 12
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %3
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %124

73:                                               ; preds = %69
  %74 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %75 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %74, i32 0, i32 1
  %76 = load i32 (%struct.input_handle.1*, %struct.input_value*, i32)*, i32 (%struct.input_handle.1*, %struct.input_value*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.input_handle.1*, %struct.input_value*, i32)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %80 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %79, i32 0, i32 1
  %81 = load i32 (%struct.input_handle.1*, %struct.input_value*, i32)*, i32 (%struct.input_handle.1*, %struct.input_value*, i32)** %80, align 8
  %82 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %83 = bitcast %struct.input_handle* %82 to %struct.input_handle.1*
  %84 = load %struct.input_value*, %struct.input_value** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 %81(%struct.input_handle.1* %83, %struct.input_value* %84, i32 %85)
  br label %122

87:                                               ; preds = %73
  %88 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %89 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %88, i32 0, i32 0
  %90 = load i32 (%struct.input_handle.0*, i32, i32, i32)*, i32 (%struct.input_handle.0*, i32, i32, i32)** %89, align 8
  %91 = icmp ne i32 (%struct.input_handle.0*, i32, i32, i32)* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %87
  %93 = load %struct.input_value*, %struct.input_value** %6, align 8
  store %struct.input_value* %93, %struct.input_value** %10, align 8
  br label %94

94:                                               ; preds = %117, %92
  %95 = load %struct.input_value*, %struct.input_value** %10, align 8
  %96 = load %struct.input_value*, %struct.input_value** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.input_value, %struct.input_value* %96, i64 %98
  %100 = icmp ne %struct.input_value* %95, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %94
  %102 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  %103 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %102, i32 0, i32 0
  %104 = load i32 (%struct.input_handle.0*, i32, i32, i32)*, i32 (%struct.input_handle.0*, i32, i32, i32)** %103, align 8
  %105 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %106 = bitcast %struct.input_handle* %105 to %struct.input_handle.0*
  %107 = load %struct.input_value*, %struct.input_value** %10, align 8
  %108 = getelementptr inbounds %struct.input_value, %struct.input_value* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.input_value*, %struct.input_value** %10, align 8
  %111 = getelementptr inbounds %struct.input_value, %struct.input_value* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.input_value*, %struct.input_value** %10, align 8
  %114 = getelementptr inbounds %struct.input_value, %struct.input_value* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 %104(%struct.input_handle.0* %106, i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %101
  %118 = load %struct.input_value*, %struct.input_value** %10, align 8
  %119 = getelementptr inbounds %struct.input_value, %struct.input_value* %118, i32 1
  store %struct.input_value* %119, %struct.input_value** %10, align 8
  br label %94

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121, %78
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %72
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
