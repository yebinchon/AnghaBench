; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_adjust_tjmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_adjust_tjmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tjmax_model = type { i64, i32, i64, i64, i32 }
%struct.cpuinfo_x86 = type { i64, i64, i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i64, i64 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@tjmax_pci_table = common dso_local global %struct.tjmax_model* null, align 8
@tjmax_table = common dso_local global %struct.tjmax_model* null, align 8
@tjmax_model_table = common dso_local global %struct.tjmax_model* null, align 8
@ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unable to access MSR 0x17, assuming desktop CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Unable to access MSR 0xEE, for Tjmax, left at default\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Using relative temperature scale!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*, i32, %struct.device*)* @adjust_tjmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_tjmax(%struct.cpuinfo_x86* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca %struct.tjmax_model*, align 8
  %18 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 100000, i32* %8, align 4
  store i32 85000, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %19 = call i32 @PCI_DEVFN(i32 0, i32 0)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %16, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_pci_table, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.tjmax_model* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_pci_table, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %40, i64 %42
  %44 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_pci_table, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %48, i64 %50
  %52 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %211

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %31

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58, %24, %3
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_table, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.tjmax_model* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_table, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %69, i64 %71
  %73 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @strstr(i32 %68, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_table, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %78, i64 %80
  %82 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %4, align 4
  br label %211

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %60

88:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %125, %88
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_model_table, align 8
  %92 = call i32 @ARRAY_SIZE(%struct.tjmax_model* %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %89
  %95 = load %struct.tjmax_model*, %struct.tjmax_model** @tjmax_model_table, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %95, i64 %97
  store %struct.tjmax_model* %98, %struct.tjmax_model** %17, align 8
  %99 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %100 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.tjmax_model*, %struct.tjmax_model** %17, align 8
  %103 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %94
  %107 = load %struct.tjmax_model*, %struct.tjmax_model** %17, align 8
  %108 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ANY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %114 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.tjmax_model*, %struct.tjmax_model** %17, align 8
  %117 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %112, %106
  %121 = load %struct.tjmax_model*, %struct.tjmax_model** %17, align 8
  %122 = getelementptr inbounds %struct.tjmax_model, %struct.tjmax_model* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %4, align 4
  br label %211

124:                                              ; preds = %112, %94
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %89

128:                                              ; preds = %89
  %129 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %130 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 15
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %135 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %136, 4
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %138, %133, %128
  %140 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %141 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 14
  br i1 %143, label %144, label %183

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %183

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @rdmsr_safe_on_cpu(i32 %148, i32 23, i32* %12, i32* %13)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.device*, %struct.device** %7, align 8
  %154 = call i32 @dev_warn(%struct.device* %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %182

155:                                              ; preds = %147
  %156 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %157 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %158, 23
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = and i32 %161, 268435456
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store i32 0, i32* %10, align 4
  br label %181

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %13, align 4
  %167 = ashr i32 %166, 18
  %168 = and i32 %167, 7
  store i32 %168, i32* %18, align 4
  %169 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %170 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 23
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load i32, i32* %18, align 4
  %175 = icmp eq i32 %174, 5
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 7
  br i1 %178, label %179, label %180

179:                                              ; preds = %176, %173
  store i32 90000, i32* %9, align 4
  store i32 105000, i32* %8, align 4
  br label %180

180:                                              ; preds = %179, %176, %165
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %152
  br label %183

183:                                              ; preds = %182, %144, %139
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @rdmsr_safe_on_cpu(i32 %187, i32 238, i32* %12, i32* %13)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.device*, %struct.device** %7, align 8
  %193 = call i32 @dev_warn(%struct.device* %192, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %201

194:                                              ; preds = %186
  %195 = load i32, i32* %12, align 4
  %196 = and i32 %195, 1073741824
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %198, %194
  br label %201

201:                                              ; preds = %200, %191
  br label %209

202:                                              ; preds = %183
  %203 = load i32, i32* %8, align 4
  %204 = icmp eq i32 %203, 100000
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.device*, %struct.device** %7, align 8
  %207 = call i32 @dev_warn(%struct.device* %206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %201
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %120, %77, %47
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tjmax_model*) #1

declare dso_local i64 @strstr(i32, i32) #1

declare dso_local i32 @rdmsr_safe_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
