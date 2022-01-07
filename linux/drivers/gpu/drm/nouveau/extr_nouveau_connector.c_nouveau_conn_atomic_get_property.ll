; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_atomic_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_atomic_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_property* }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.nouveau_display = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_conn_atomic_get_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_conn_atom*, align 8
  %11 = alloca %struct.nouveau_display*, align 8
  %12 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %14 = call %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state* %13)
  store %struct.nouveau_conn_atom* %14, %struct.nouveau_conn_atom** %10, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %18 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %17)
  store %struct.nouveau_display* %18, %struct.nouveau_display** %11, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %12, align 8
  %22 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.drm_property*, %struct.drm_property** %25, align 8
  %27 = icmp eq %struct.drm_property* %22, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %30 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %131

34:                                               ; preds = %4
  %35 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %36 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %37 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %36, i32 0, i32 6
  %38 = load %struct.drm_property*, %struct.drm_property** %37, align 8
  %39 = icmp eq %struct.drm_property* %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %42 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %130

47:                                               ; preds = %34
  %48 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %49 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %50 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %49, i32 0, i32 5
  %51 = load %struct.drm_property*, %struct.drm_property** %50, align 8
  %52 = icmp eq %struct.drm_property* %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %55 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %129

60:                                               ; preds = %47
  %61 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %62 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %63 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %62, i32 0, i32 4
  %64 = load %struct.drm_property*, %struct.drm_property** %63, align 8
  %65 = icmp eq %struct.drm_property* %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %68 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %128

73:                                               ; preds = %60
  %74 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %75 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %76 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %75, i32 0, i32 3
  %77 = load %struct.drm_property*, %struct.drm_property** %76, align 8
  %78 = icmp eq %struct.drm_property* %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %81 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %127

85:                                               ; preds = %73
  %86 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %87 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %88 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %87, i32 0, i32 2
  %89 = load %struct.drm_property*, %struct.drm_property** %88, align 8
  %90 = icmp eq %struct.drm_property* %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %93 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  br label %126

97:                                               ; preds = %85
  %98 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %99 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %100 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %99, i32 0, i32 1
  %101 = load %struct.drm_property*, %struct.drm_property** %100, align 8
  %102 = icmp eq %struct.drm_property* %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %105 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %125

109:                                              ; preds = %97
  %110 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %111 = load %struct.nouveau_display*, %struct.nouveau_display** %11, align 8
  %112 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %111, i32 0, i32 0
  %113 = load %struct.drm_property*, %struct.drm_property** %112, align 8
  %114 = icmp eq %struct.drm_property* %110, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %10, align 8
  %117 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %124

121:                                              ; preds = %109
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %132

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125, %91
  br label %127

127:                                              ; preds = %126, %79
  br label %128

128:                                              ; preds = %127, %66
  br label %129

129:                                              ; preds = %128, %53
  br label %130

130:                                              ; preds = %129, %40
  br label %131

131:                                              ; preds = %130, %28
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %121
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state*) #1

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
