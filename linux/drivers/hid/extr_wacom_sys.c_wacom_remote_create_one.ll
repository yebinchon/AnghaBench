; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_create_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remote_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_13__, %struct.TYPE_10__*, %struct.wacom_remote* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wacom_remote = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@WACOM_MAX_REMOTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i64, i32)* @wacom_remote_create_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_remote_create_one(%struct.wacom* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wacom_remote*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wacom*, %struct.wacom** %5, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 2
  %14 = load %struct.wacom_remote*, %struct.wacom_remote** %13, align 8
  store %struct.wacom_remote* %14, %struct.wacom_remote** %8, align 8
  %15 = load %struct.wacom*, %struct.wacom** %5, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %36, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @WACOM_MAX_REMOTES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %25 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @WACOM_MAX_REMOTES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %46 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i64 %44, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %227

52:                                               ; preds = %39
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %55 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @devres_open_group(%struct.device* %53, %struct.TYPE_14__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %227

66:                                               ; preds = %52
  %67 = load %struct.wacom*, %struct.wacom** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @wacom_remote_create_attr_group(%struct.wacom* %67, i64 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %210

74:                                               ; preds = %66
  %75 = load %struct.wacom*, %struct.wacom** %5, align 8
  %76 = call %struct.TYPE_12__* @wacom_allocate_input(%struct.wacom* %75)
  %77 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %78 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %83, align 8
  %84 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %85 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %74
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %210

96:                                               ; preds = %74
  %97 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %98 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %107 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %105, i32* %114, align 4
  %115 = load %struct.wacom*, %struct.wacom** %5, align 8
  %116 = getelementptr inbounds %struct.wacom, %struct.wacom* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %120 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 %118, i32* %127, align 4
  %128 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %129 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %96
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %210

142:                                              ; preds = %96
  %143 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %144 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load %struct.wacom*, %struct.wacom** %5, align 8
  %152 = getelementptr inbounds %struct.wacom, %struct.wacom* %151, i32 0, i32 0
  %153 = call i32 @wacom_setup_pad_input_capabilities(%struct.TYPE_12__* %150, %struct.TYPE_13__* %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %210

157:                                              ; preds = %142
  %158 = load i64, i64* %6, align 8
  %159 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %160 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i64 %158, i64* %165, align 8
  %166 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %167 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = call i32 @input_register_device(%struct.TYPE_12__* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %210

178:                                              ; preds = %157
  %179 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %180 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %179, i32 0, i32 0
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.wacom*, %struct.wacom** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @wacom_led_groups_alloc_and_register_one(i32* %187, %struct.wacom* %188, i32 %189, i32 3, i32 1)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %210

194:                                              ; preds = %178
  %195 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %196 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  store i32 1, i32* %201, align 8
  %202 = load %struct.device*, %struct.device** %9, align 8
  %203 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %204 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %203, i32 0, i32 0
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %207
  %209 = call i32 @devres_close_group(%struct.device* %202, %struct.TYPE_14__* %208)
  store i32 0, i32* %4, align 4
  br label %227

210:                                              ; preds = %193, %177, %156, %139, %93, %73
  %211 = load %struct.device*, %struct.device** %9, align 8
  %212 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %213 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %212, i32 0, i32 0
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i64 %216
  %218 = call i32 @devres_release_group(%struct.device* %211, %struct.TYPE_14__* %217)
  %219 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  %220 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %219, i32 0, i32 0
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %210, %194, %63, %43
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @devres_open_group(%struct.device*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @wacom_remote_create_attr_group(%struct.wacom*, i64, i32) #1

declare dso_local %struct.TYPE_12__* @wacom_allocate_input(%struct.wacom*) #1

declare dso_local i32 @wacom_setup_pad_input_capabilities(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

declare dso_local i32 @wacom_led_groups_alloc_and_register_one(i32*, %struct.wacom*, i32, i32, i32) #1

declare dso_local i32 @devres_close_group(%struct.device*, %struct.TYPE_14__*) #1

declare dso_local i32 @devres_release_group(%struct.device*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
